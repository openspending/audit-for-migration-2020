#!/bin/zsh

# Vim macros magic

cd alberta-budget && \
    git init && git remote add origin git@github.com:os-data/alberta-budget.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/alberta-budget/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd at33-tirol-2007-2013-erdf && \
    git init && git remote add origin git@github.com:os-data/at33-tirol-2007-2013-erdf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/at33-tirol-2007-2013-erdf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd balansen-onderwijs-2012-2016-nl-v4-9 && \
    git init && git remote add origin git@github.com:os-data/balansen-onderwijs-2012-2016-nl-v4-9.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/balansen-onderwijs-2012-2016-nl-v4-9/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd berlin-2014-2021 && \
    git init && git remote add origin git@github.com:os-data/berlin-2014-2021.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/berlin-2014-2021/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd berlin-berlin && \
    git init && git remote add origin git@github.com:os-data/berlin-berlin.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/berlin-berlin/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd bg-bulgaria-2007-2013-2014-2020-erdf-esf-cf && \
    git init && git remote add origin git@github.com:os-data/bg-bulgaria-2007-2013-2014-2020-erdf-esf-cf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/bg-bulgaria-2007-2013-2014-2020-erdf-esf-cf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd bonn && \
    git init && git remote add origin git@github.com:os-data/bonn.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/bonn/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd bonn-2017 && \
    git init && git remote add origin git@github.com:os-data/bonn-2017.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/bonn-2017/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd boost-burkina-faso-2005-2015-fr && \
    git init && git remote add origin git@github.com:os-data/boost-burkina-faso-2005-2015-fr.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/boost-burkina-faso-2005-2015-fr/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd boost-guatemala-central && \
    git init && git remote add origin git@github.com:os-data/boost-guatemala-central.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/boost-guatemala-central/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd brandenburg && \
    git init && git remote add origin git@github.com:os-data/brandenburg.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/brandenburg/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd bundeshaushalt && \
    git init && git remote add origin git@github.com:os-data/bundeshaushalt.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/bundeshaushalt/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd city-of-frankfurt-expenditure && \
    git init && git remote add origin git@github.com:os-data/city-of-frankfurt-expenditure.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/city-of-frankfurt-expenditure/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd city-of-redacre-expenditure && \
    git init && git remote add origin git@github.com:os-data/city-of-redacre-expenditure.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/city-of-redacre-expenditure/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020 && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-at && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-at.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-at/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-bg && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-bg.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-bg/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-cz && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-cz.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-cz/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-de && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-de.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-de/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-dk && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-dk.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-dk/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-el && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-el.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-el/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-es && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-es.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-es/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fi && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fi.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fi/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fr && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fr.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fr/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hr && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hr.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hr/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hu && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hu.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hu/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-it && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-it.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-it/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-nl && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-nl.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-nl/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pl && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pl.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pl/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pt && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pt.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pt/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-se && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-se.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-se/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-si && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-si.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-si/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-sk && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-sk.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-sk/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-uk && \
    git init && git remote add origin git@github.com:os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-uk.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-uk/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd dallgow && \
    git init && git remote add origin git@github.com:os-data/dallgow.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/dallgow/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd de3-berlin-2007-2013-erdf && \
    git init && git remote add origin git@github.com:os-data/de3-berlin-2007-2013-erdf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/de3-berlin-2007-2013-erdf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd de3-berlin-2007-2013-esf && \
    git init && git remote add origin git@github.com:os-data/de3-berlin-2007-2013-esf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/de3-berlin-2007-2013-esf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd ded-sachsen-2007-2013-erdf && \
    git init && git remote add origin git@github.com:os-data/ded-sachsen-2007-2013-erdf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/ded-sachsen-2007-2013-erdf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd dominican-republic-2016-budget && \
    git init && git remote add origin git@github.com:os-data/dominican-republic-2016-budget.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/dominican-republic-2016-budget/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd ee-estonia-2007-2013-erdf-esf-cf && \
    git init && git remote add origin git@github.com:os-data/ee-estonia-2007-2013-erdf-esf-cf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/ee-estonia-2007-2013-erdf-esf-cf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd el-greece-2014-2020-erdf-esf-cf && \
    git init && git remote add origin git@github.com:os-data/el-greece-2014-2020-erdf-esf-cf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/el-greece-2014-2020-erdf-esf-cf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd es-spain-2007-2013-erdf && \
    git init && git remote add origin git@github.com:os-data/es-spain-2007-2013-erdf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/es-spain-2007-2013-erdf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd es-spain-2007-2013-esf && \
    git init && git remote add origin git@github.com:os-data/es-spain-2007-2013-esf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/es-spain-2007-2013-esf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd esf-and-erdf-data-for-italy-2007-2013 && \
    git init && git remote add origin git@github.com:os-data/esf-and-erdf-data-for-italy-2007-2013.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/esf-and-erdf-data-for-italy-2007-2013/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd france-cplf-2013-2014 && \
    git init && git remote add origin git@github.com:os-data/france-cplf-2013-2014.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/france-cplf-2013-2014/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd frankfurt-am-main && \
    git init && git remote add origin git@github.com:os-data/frankfurt-am-main.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/frankfurt-am-main/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd frankfurt-new && \
    git init && git remote add origin git@github.com:os-data/frankfurt-new.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/frankfurt-new/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd gilching && \
    git init && git remote add origin git@github.com:os-data/gilching.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/gilching/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd haushaltsdaten-bremen-2016-2018 && \
    git init && git remote add origin git@github.com:os-data/haushaltsdaten-bremen-2016-2018.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/haushaltsdaten-bremen-2016-2018/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd hu-hungary-2014-2020-erdf-esf-cf && \
    git init && git remote add origin git@github.com:os-data/hu-hungary-2014-2020-erdf-esf-cf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/hu-hungary-2014-2020-erdf-esf-cf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd jena && \
    git init && git remote add origin git@github.com:os-data/jena.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/jena/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd kiel && \
    git init && git remote add origin git@github.com:os-data/kiel.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/kiel/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd land-niedersachsen && \
    git init && git remote add origin git@github.com:os-data/land-niedersachsen.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/land-niedersachsen/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd land-nrw && \
    git init && git remote add origin git@github.com:os-data/land-nrw.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/land-nrw/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd ludwigslust && \
    git init && git remote add origin git@github.com:os-data/ludwigslust.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/ludwigslust/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd mexico-2015-budget && \
    git init && git remote add origin git@github.com:os-data/mexico-2015-budget.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/mexico-2015-budget/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd moers-all && \
    git init && git remote add origin git@github.com:os-data/moers-all.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/moers-all/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd mongolia-budget-2016-2017 && \
    git init && git remote add origin git@github.com:os-data/mongolia-budget-2016-2017.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/mongolia-budget-2016-2017/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd nl-netherlands-2007-2013-esf && \
    git init && git remote add origin git@github.com:os-data/nl-netherlands-2007-2013-esf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/nl-netherlands-2007-2013-esf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd nl-netherlands-2014-2020-esf && \
    git init && git remote add origin git@github.com:os-data/nl-netherlands-2014-2020-esf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/nl-netherlands-2014-2020-esf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd nuernberg && \
    git init && git remote add origin git@github.com:os-data/nuernberg.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/nuernberg/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd potsdam-haushalt-2018-entwurf && \
    git init && git remote add origin git@github.com:os-data/potsdam-haushalt-2018-entwurf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/potsdam-haushalt-2018-entwurf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd presupuesto-aprobado-y-devengado-de-queretaro && \
    git init && git remote add origin git@github.com:os-data/presupuesto-aprobado-y-devengado-de-queretaro.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/presupuesto-aprobado-y-devengado-de-queretaro/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd presupuesto-egresos-2019-costa-rica && \
    git init && git remote add origin git@github.com:os-data/presupuesto-egresos-2019-costa-rica.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/presupuesto-egresos-2019-costa-rica/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd presupuesto-im && \
    git init && git remote add origin git@github.com:os-data/presupuesto-im.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/presupuesto-im/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd program-budget-of-city-of-presov-slovakia-2016 && \
    git init && git remote add origin git@github.com:os-data/program-budget-of-city-of-presov-slovakia-2016.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/program-budget-of-city-of-presov-slovakia-2016/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd proyecto-de-presupuesto-de-egresos-de-la-federacion-2018 && \
    git init && git remote add origin git@github.com:os-data/proyecto-de-presupuesto-de-egresos-de-la-federacion-2018.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/proyecto-de-presupuesto-de-egresos-de-la-federacion-2018/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd rhein-kreis-neuss && \
    git init && git remote add origin git@github.com:os-data/rhein-kreis-neuss.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/rhein-kreis-neuss/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd rheinland-pfalz-haushalt-2016-2017-2018 && \
    git init && git remote add origin git@github.com:os-data/rheinland-pfalz-haushalt-2016-2017-2018.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/rheinland-pfalz-haushalt-2016-2017-2018/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd schleswig-holstein && \
    git init && git remote add origin git@github.com:os-data/schleswig-holstein.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/schleswig-holstein/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd stadt-fuerth-2018 && \
    git init && git remote add origin git@github.com:os-data/stadt-fuerth-2018.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/stadt-fuerth-2018/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd state-of-minas-gerais-brazil-planned-budget && \
    git init && git remote add origin git@github.com:os-data/state-of-minas-gerais-brazil-planned-budget.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/state-of-minas-gerais-brazil-planned-budget/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd toiminnan-kulut && \
    git init && git remote add origin git@github.com:os-data/toiminnan-kulut.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/toiminnan-kulut/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd uk-united-kingdom-2007-2013-erdf-esf && \
    git init && git remote add origin git@github.com:os-data/uk-united-kingdom-2007-2013-erdf-esf.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/uk-united-kingdom-2007-2013-erdf-esf/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd ukraine-transactions-sep-11-2015-sep-15-2015 && \
    git init && git remote add origin git@github.com:os-data/ukraine-transactions-sep-11-2015-sep-15-2015.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/ukraine-transactions-sep-11-2015-sep-15-2015/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd washington-dc-employee-salaries && \
    git init && git remote add origin git@github.com:os-data/washington-dc-employee-salaries.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/washington-dc-employee-salaries/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
cd wesel && \
    git init && git remote add origin git@github.com:os-data/wesel.git && \
    git lfs track "*.csv" && \
    git add **/*.csv && \
    git commit -m "Add tracked CSV files" && \
    git config -f .lfsconfig lfs.url http://127.0.0.1:8080/os-data/wesel/ && git add .lfsconfig && git commit -m "New git-lfs server endpoint" && \
    git lfs push origin master && \
    git add datapackage.json .gitattributes && \
    git commit -m "Add datapackage and .gitattributes" && \
    git push --set-upstream origin master && git tag openspending-migration-2020 && git push origin openspending-migration-2020 && \
    cd ..
