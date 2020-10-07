#!/bin/bash

declare -a arr=("alberta-budget" "at33-tirol-2007-2013-erdf" "balansen-onderwijs-2012-2016-nl-v4-9" "berlin-2014-2021" "berlin-berlin" "bg-bulgaria-2007-2013-2014-2020-erdf-esf-cf" "bonn" "bonn-2017" "boost-burkina-faso-2005-2015-fr" "boost-guatemala-central" "brandenburg" "bundeshaushalt" "city-of-frankfurt-expenditure" "city-of-redacre-expenditure" "complete-european-esif-funds-beneficiaries-2007-2020" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-at" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-bg" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-cz" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-de" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-dk" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-el" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-es" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fi" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-fr" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hr" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-hu" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-it" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-nl" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pl" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-pt" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-se" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-si" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-sk" "complete-european-esif-funds-beneficiaries-2007-2020-filtered-by-uk" "dallgow" "de3-berlin-2007-2013-erdf" "de3-berlin-2007-2013-esf" "ded-sachsen-2007-2013-erdf" "dominican-republic-2016-budget" "ee-estonia-2007-2013-erdf-esf-cf" "el-greece-2014-2020-erdf-esf-cf" "es-spain-2007-2013-erdf" "es-spain-2007-2013-esf" "esf-and-erdf-data-for-italy-2007-2013" "france-cplf-2013-2014" "frankfurt-am-main" "frankfurt-new" "gilching" "haushaltsdaten-bremen-2016-2018" "hu-hungary-2014-2020-erdf-esf-cf" "jena" "kiel" "land-niedersachsen" "land-nrw" "ludwigslust" "mexico-2015-budget" "moers-all" "mongolia-budget-2016-2017" "nl-netherlands-2007-2013-esf" "nl-netherlands-2014-2020-esf" "nuernberg" "potsdam-haushalt-2018-entwurf" "presupuesto-aprobado-y-devengado-de-queretaro" "presupuesto-im" "program-budget-of-city-of-presov-slovakia-2016" "proyecto-de-presupuesto-de-egresos-de-la-federacion-2018" "rhein-kreis-neuss" "rheinland-pfalz-haushalt-2016-2017-2018" "schleswig-holstein" "stadt-fuerth-2018" "state-of-minas-gerais-brazil-planned-budget" "toiminnan-kulut" "uk-united-kingdom-2007-2013-erdf-esf" "ukraine-transactions-sep-11-2015-sep-15-2015" "washington-dc-employee-salaries" "wesel"); for i in "${arr[@]}"; do \
  echo "Creating $i repo, please wait..."
  curl -H "Content-Type: application/json" -H "Authorization: token $GH_TOKEN" -d \
    '{"name":"'"$i"'"}' "https://api.github.com/orgs/os-data/repos"; \
done