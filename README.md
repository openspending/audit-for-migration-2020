# Table of contents

  * [More on the OpenSpending database](#more-on-the-openspending-database)
  * [OpenSpending database - Basic statistics](#openspending-database---basic-statistics)
  * [Database samples](#database-samples)
  * [How we filter what to keep when auditing](#how-we-filter-what-to-keep-when-auditing)
  * [How we retrieve the metadata from Elasticsearch](#how-we-retrieve-the-metadata-from-elasticsearch)
    * [Prerequisites](#prerequisites)
    * [Guide](#guide)
* [How we retrieve data from S3 and store it in Google Cloud Storage with a Giftless server](#how-we-retrieve-data-from-s3-and-store-it-in-google-cloud-storage-with-a-giftless-server)
## More on the OpenSpending database

You can find more information about how we are auditing the database in this public spreadsheet:

- https://docs.google.com/spreadsheets/d/1Cno0jUkfl8ozf0qjaNhuCmJEmMaL2U65sNONqVTEEnM/edit?usp=sharing

## OpenSpending database - Basic statistics

| Item                                                                    | Value       |
| ----------------------------------------------------------------------- | ----------- |
| Total number of tables                                                  | 8,233       |
| Total number of rows across all tables                                  | 153,884,300 |
| Number of tables with at least 100 rows                                 | 3,361       |
| Number of tables with number of rows between 10 and 99 (both inclusive) | 1,796       |
| Number of empty tables reported                                         | 298         |

## Database samples

You can find relevant samples for tables with high read/write access under the [samples/](samples) directory with an accompanying `datapackage.json` for each sample, which is a useful descriptor file containing metadata about a data package, a format extensively used as part of the Frictionless Data tooling as a convenient way to represent tabular data. Get to know more about this practical open-source toolkit at [frictionlessdata.io](https://frictionlessdata.io).

---

## How we filter what to keep when auditing

We have a list of filters to determine what to keep/discard from the database (see https://github.com/openspending/openspending/issues/1482 for details). Those filters are applied through formulae in the [spreadsheet](https://docs.google.com/spreadsheets/d/1Cno0jUkfl8ozf0qjaNhuCmJEmMaL2U65sNONqVTEEnM/edit):

- Column `D`, titled `Keep?`, contains the formula with the filters. It outputs either `yes` or `no` to answer the question "should we keep it" when inquiring about a table.
- The same formula is applied to all the rows in column `D`, once for each table in the database.

This technique is used to quickly list what's relevant and hide what is not by filtering column `D` to select only the rows where `yes` appears so that we can export a shorter list of tables containing only useful data.

---

## How we retrieve the metadata from Elasticsearch

_The following guide was written by [Victor Nițu](https://github.com/nightsh)._

### Prerequisites

- Access to the OKFN k8s cluster / `production` namespace.
- `kubectl` binary.
- `elasticsearch-dump` or Docker. See
  https://github.com/elasticsearch-dump/elasticsearch-dump
- Internet :slightly_smiling_face:.

> _NOTE: The steps described below were only tested in a GNU/Linux environment. While they might work in other OSes, some adjustments might be nceessary._

### Guide

1. Make sure you're using the right k8s context (check with `kubectl config get-context`).
2. Port forward the ES coordinating service to your local:
    `kubectl port-forward -n production service/openspending-production-elasticsearch-coordinating-only 9200:9200`
3. (optional) Install `elasticsearch-dump`:
    `npm i -g elasticsearch-dump`
4. Check indices and their names:
    `curl -X GET "localhost:9200/_aliases" -H 'Content-Type: application/json'`
5. If you installed via `npm`, run the binary, else you can just spin a temporary Docker container. Here's how to output to `STDOUT`:

        $ elasticsearch-dump \
        --input=http://localhost:9200/packages/ \
        --output=$ \
        --type=data

    OR

        $ docker run --rm -ti elasticdump/elasticsearch-dump \
        --input=http://localhost:9200/packages/ \
        --output=$ \
        --type=data

    If you see a lot of output, it works. Now to create a more useful dump, we will dump the analyzer, mapping and data into a file for each.

6. Let's run:

        $ docker run --net=host -v /tmp:/data --rm -ti \
        elasticdump/elasticsearch-dump \
        --input=http://localhost:9200/packages/ \
        --output=/data/packages_analyzer.json \
        --type=analyzer

        $ docker run --net=host -v /tmp:/data --rm -ti \
        elasticdump/elasticsearch-dump \
        --input=http://localhost:9200/packages/ \
        --output=/data/packages_mapping.json \
        --type=mapping

        $ docker run --net=host -v /tmp:/data --rm -ti \
        elasticdump/elasticsearch-dump \
        --input=http://localhost:9200/packages/ \
        --output=/data/packages_data.json \
        --type=data

7. Now all your dumps are stored into `/tmp/packages_{analyzer,mapping,data}.json`
8. To import, use the reverse command (input is a file, output is a ES endpoint).

More info re:usage [here](https://github.com/elasticsearch-dump/elasticsearch-dump#use).

---

# How we retrieve data from S3 and store it in Google Cloud Storage with a Giftless server

The whole process is described in [this short guide](./s3_to_google_cloud_storage/README.md).
