import os
from pathlib import Path
import subprocess

REPOS = [
    # "costa-rica-presupuesto-egresos-2017",
    # "costa-rica-presupuesto-egresos-2018",
    # "costa-rica-presupuesto-egresos-2019",
    # "costa-rica-presupuesto-egresos-2020",
    # "costa-rica-presupuesto-ingresos-2017",
    # "costa-rica-presupuesto-ingresos-2018",
    # "costa-rica-presupuesto-ingresos-2019",
    # "costa-rica-presupuesto-ingresos-2020",
    # "croatia-budget-spending",
    # "paraguay-2017",
    "presupuesto-de-uruguay",
    # "presupuesto-mexico-2008-2019",
    # "republica-dominicana-gastos-economica-2014-2020",
    # "south-africa-national-estimates-2015-2019",
    # "south-africa-provincial-estimates-2018-2019",
]

def create_dirs():
    for repo in REPOS:
        os.mkdir(repo)

def clone_repos():
    for repo in REPOS:
        repo_url = f"git@github.com:gift-data/{repo}.git"
        subprocess.run(["git", "clone", repo_url])

def check_status():
    for repo in REPOS:
        cwd = os.getcwd()
        repo_path = Path(cwd) / repo
        os.chdir(repo_path)
        print(repo_path)
        subprocess.run(["git", "status"])
        print("\n\n")
        os.chdir(cwd)


def update_repos():
    for repo in REPOS:
        cwd = os.getcwd()
        repo_path = Path(cwd) / repo
        os.chdir(repo_path)
        print(repo_path)
        subprocess.run(["git", "add", "."])
        subprocess.run(["git", "commit", "-m", "'Update datapackage.json'"])
        subprocess.run(["git", "lfs", "push", "origin", "master"])
        subprocess.run(["git", "push", "origin", "master"])
        print("\n\n")
        os.chdir(cwd)


if __name__ == "__main__":
    update_repos()
