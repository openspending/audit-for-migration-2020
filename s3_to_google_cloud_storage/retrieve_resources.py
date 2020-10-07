# Standard library imports
from pathlib import Path
import json
import os
import string

# Third-party libraries imports
import requests
import unidecode


def get_datasets_map() -> dict:
    """Map name of repo to datapackage.json URL. Return a dict."""
    with open("datasets.json") as datasets_file:
        datasets_map = json.load(datasets_file)
    return datasets_map


def convert_string_to_proper_title(title: str) -> str:
    allowed_chars = string.ascii_letters + string.digits + "-"
    title = unidecode.unidecode(title.lower())  # get rid of all diacritics
    new_title = ""
    for char in title:
        if char in allowed_chars:
            new_title += char
        elif char in [" ", ".", "_"]:  # convert those characters to dashes
            new_title += "-"
    while "--" in new_title:  # clean up possible duplicate characters
        new_title = new_title.replace("--", "-")
    return new_title.strip("-")  # may get a dash at one of the ends


def generate_repo_titles_from_dataset_map(datasets_map: dict) -> dict:
    """Take in `datasets_map` and return a modified dict with a proper
    title for each dataset. This is the title we use to create the repo
    on GitHub."""
    datasets_map_final = {}
    for name in datasets_map:
        new_title = convert_string_to_proper_title(name)
        datasets_map_final[new_title] = datasets_map[name]
    return datasets_map_final


def generate_repos_empty_list_resources(datasets_map: dict) -> dict:
    """Get a dictionary with the name of the repos we are interested in,
    each one being set to an empty list."""
    repos_list_resources = {}
    for repo_name in datasets_map:
        repos_list_resources[repo_name] = []
    return repos_list_resources


def download_data_packages(datasets_map: dict):
    """Download the datapackage.json file for each repo."""
    for repo_name, package_url in datasets_map.items():
        print(f"[{repo_name}] Retrieving {package_url}...")
        repo_dir = Path("data/" + repo_name)
        try:
            os.mkdir(repo_dir)
        except FileExistsError:
            pass
        repo_file = repo_dir / "datapackage.json"
        r = requests.get(package_url)

        with open(repo_file, "w") as f:
            f.write(r.text)


# NOTE: The script was hanging without chunking big files.
# This solved the issue.
def download_file(url: str, path: str) -> str:
    with requests.get(url, stream=True) as r:
        r.raise_for_status()
        with open(path, "wb") as f:
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)
    return path


def get_resources(datasets_map: dict) -> dict:
    """Download all the resources for each repo."""
    repos_list_resources = generate_repos_empty_list_resources(datasets_map)
    for repo_name in repos_list_resources:
        repo_path = Path("data/" + repo_name)
        repo_file = repo_path / "datapackage.json"
        repo_package_url = datasets_map[repo_name].rstrip("datapackage.json")

        with open(repo_file) as f:
            json_content = json.load(f)
        for resource in json_content["resources"]:
            resource_path = resource["path"]
            resource_url = repo_package_url + resource_path
            resource_local_path = repo_path / resource_path

            if (
                os.path.exists(resource_local_path)
                and os.stat(resource_local_path).st_size != 0
            ):
                continue
            if "test" in resource_url.lower():
                continue

            print(f"[{resource_local_path}] Retrieving {resource_url}...")

            if "/data" in resource_url:
                try:
                    os.mkdir(repo_path / "data")
                except FileExistsError:
                    pass

            download_file(url=resource_url, path=resource_local_path)


if __name__ == "__main__":
    DATASETS_MAP = get_datasets_map()
    DATASETS_MAP = generate_repo_titles_from_dataset_map(DATASETS_MAP)

    download_data_packages(DATASETS_MAP)
    get_resources(DATASETS_MAP)
