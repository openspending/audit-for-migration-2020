# Migrating data from S3 to Google Cloud Storage using Giftless

## Giftless setup

### Google Cloud Storage credentials file

In the same directory as the Giftless server, make sure there is a file `credentials.json`, which you can obtain when setting up a service account on Google Cloud Storage. Its content should be of the following form:

```json
{
  "type": "service_account",
  "project_id": "XXXXXXXXXXXXXXXX",
  "private_key_id": "XXXXXXXXXXXXXXXX",
  "private_key": "-----BEGIN PRIVATE KEY-----\nXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXX\n",
  "client_email": "email@project-name.iam.gserviceaccount.com",
  "client_id": "XXXXXXXXXXXXXXXX",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/email%40project-name.iam.gserviceaccount.com"
}
```

### Giftless server configuration

You should have a file `giftless.yaml` at the root directory where the Giftless server is located (same directory as `credentials.json`). It should contain something like the following for a Google Cloud Storage configuration:

```yaml
TRANSFER_ADAPTERS:
  basic:
    factory: giftless.transfer.basic_streaming:factory
    options:
      storage_class: giftless.storage.google_cloud:GoogleCloudStorage
      storage_options:
        project_name: gift-data
        bucket_name: gift-datasets
        account_key_file: credentials.json
AUTH_PROVIDERS:
  - giftless.auth.allow_anon:read_write
```

For convenience, it has been added to this repository: [giftless.yaml](./giftless.yaml).

Additionally, you will need to export the following environment variable for Giftless to use this configuration file:

```bash
export GIFTLESS_CONFIG_FILE=giftless.yaml
```

#### Running the Giftless server

With a local setup, this can be done with a freshly clone of the [datopian/giftless](https://github.com/datopian/giftless) repo while running uWSGI. More details can be found in the section [Google Cloud Platform Support](https://github.com/datopian/giftless#google-cloud-platform-support).

```bash
uwsgi -M -T --threads 2 -p 2 --manage-script-name \
    --module giftless.wsgi_entrypoint --callable app --http 127.0.0.1:8080
```

----

## Retrieving data from S3

* This happens in two main steps:
  * Download the data packages file (`datapackage.json`) for each dataset we are interested in;
  * Reading those files, we determine the URL of the associated resources and we retrieve them in separate repositories.

The Python script used to perform those actions can be found in the file [retrieve_resources.py](./retrieve_resources.py).

## Preparing GitHub repositories to store the datasets metadata

### Set up GitHub repositories

The data itself is stored in the cloud, but we need a GitHub repository to store the metadata with Git-LFS. To create repositories programmatically on GitHub, you need a personal access token and can use the following syntax:

    curl -H "Authorization: token ACCESS_TOKEN" --data \
        '{"name":"NEW_REPO_NAME"}' https://api.github.com/user/repos

The process can be greatly sped up by looping over a list of repository names. Preparing the repos locally is equally quick:

    mkdir repo-name [...]
    git clone git@github.com:gift-data/repo-name.git repo-name && \
        git clone [...]

### Push files with Git-LFS and commit them

_Note: You will experience issues when trying to push a commit larger than 2GB._ This is explained in this [GitHub Community post](https://github.community/t/working-with-large-files-and-repositories/10203).

The general idea is to have the Giftless server ready and perform the following actions:

```bash
cd repo-name && \
    git lfs track "*.csv" && \
    git add . && \
    git commit -m "Add tracked CSV files" && \
    git lfs push origin master &&
    cd ..
```

The process can be automated as is shown in the Bash file [push_lfs.sh](./push_lfs.sh).

Finally, we want to update the remote repositories by pushing our local commits once the files are stored on Google Cloud Storage. This can be done with a command like the following:

```bash
cd repo-name && git push origin && cd ..
cd repo-name-2 && git push origin && cd ..
```

This is automated for the GIFT datasets in the file [push_git.sh](./push_git.sh).
