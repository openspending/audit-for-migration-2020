from pathlib import Path
import json
import os

import requests

# Map name of repo to datapackage.json URL
REPOS = {
    "costa-rica-presupuesto-egresos-2017": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/egresos_2017_cr/final/datapackage.json",
    "costa-rica-presupuesto-egresos-2018": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/egreso_2018_cr/final/datapackage.json",
    "costa-rica-presupuesto-egresos-2019": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/egresos_2019_cr/final/datapackage.json",
    "costa-rica-presupuesto-egresos-2020": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/e2020_cr_ene_feb/final/datapackage.json",
    "costa-rica-presupuesto-ingresos-2017": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/ingresos_2017_cr/final/datapackage.json",
    "costa-rica-presupuesto-ingresos-2018": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/ingresos_2018_cr/final/datapackage.json",
    "costa-rica-presupuesto-ingresos-2019": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/ingresos_2019_cr/final/datapackage.json",
    "costa-rica-presupuesto-ingresos-2020": "http://datastore.openspending.org/2e6c7fb02a09883c5556f341e814d3bf/ingreso2020ene_may/final/datapackage.json",
    "croatia-budget-spending": "http://s3.amazonaws.com/datastore.openspending.org/667df60aa07c34260eae9b55b2778712/croatia-budget-spending/final/datapackage.json",
    "paraguay-2017": "https://s3.amazonaws.com:443/datastore.openspending.org/d2e8215903dc37020268704e584dda11/pgn-2017/datapackage.json",
    "presupuesto-de-uruguay": "http://s3.amazonaws.com/datastore.openspending.org/667df60aa07c34260eae9b55b2778712/presupuesto_de_uruguay/final/datapackage.json",
    "presupuesto-mexico-2008-2019": "http://s3.amazonaws.com/datastore.openspending.org/667df60aa07c34260eae9b55b2778712/presupuesto_mexico/final/datapackage.json",
    "republica-dominicana-gastos-economica-2014-2020": "http://datastore.openspending.org/d12b5fcc290ca2a801abdf9603d5969b/ingresoseconomica/final/datapackage.json",
    "south-africa-national-estimates-2015-2019": "http://datastore.openspending.org/b9d2af843f3a7ca223eea07fb608e62a/budgeted-and-actual-national-expenditure-of-south-africa-uploaded-2019-11-01t1258/final/datapackage.json",
    "south-africa-provincial-estimates-2018-2019": "http://datastore.openspending.org/b9d2af843f3a7ca223eea07fb608e62a/estimates-of-provincial-expenditure-south-africa-2018-19-shifted-econ-classes/final/datapackage.json",
}


def generate_repos_empty_list_resources(repos=REPOS) -> dict:
    """Get a dictionary with the name of the repos we are interested in,
    each one being set to an empty list."""
    repos_list_resources = {}
    for repo_name in repos.keys():
        repos_list_resources[repo_name] = []
    return repos_list_resources


def download_data_packages(repos=REPOS):
    """Download  the datapackage.json file for each repo."""
    for repo_name, package_url in repos.items():
        try:
            os.mkdir(repo_name)
        except FileExistsError:
            pass
        repo_dir = Path(repo_name)
        repo_file = repo_dir / "datapackage.json"
        r = requests.get(package_url)

        with open(repo_file, "w") as f:
            f.write(r.text)


def get_resources(repos=REPOS) -> dict:
    """Download all the resources for each repo."""
    repos_list_resources = generate_repos_empty_list_resources()
    for repo_name, repo_resources in repos_list_resources.items():
        repo_path = Path(repo_name)
        repo_file = repo_path / "datapackage.json"
        repo_package_url = repos[repo_name].rstrip("datapackage.json")

        with open(repo_file) as f:
            content = f.read()
        json_content = json.loads(content)
        for resource in json_content["resources"]:
            resource_path = resource["path"]
            resource_url = repo_package_url + resource_path
            resource_local_path = repo_path / resource_path
            if not os.path.exists(resource_local_path):
                print("Getting", resource_url)
                print("saving to...", resource_local_path)

                if "data/" in resource_path:
                    try:
                        os.mkdir(repo_path / "data")
                    except FileExistsError:
                        pass

                r = requests.get(resource_url)
                with open(resource_local_path, "w") as f:
                    f.write(r.text)


if __name__ == "__main__":
    download_data_packages()
    get_resources()
