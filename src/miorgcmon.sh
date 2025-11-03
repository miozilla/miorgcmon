#!/bin/bash

gcloud config set compute/zone "ZONE"
export ZONE=$(gcloud config get compute/zone)

gcloud config set compute/region "REGION"
export REGION=$(gcloud config get compute/region)

sudo apt-get update

sudo apt-get install apache2 php7.0

sudo service apache2 restart

curl -sSO https://dl.google.com/cloudagents/add-google-cloud-ops-agent-repo.sh

sudo bash add-google-cloud-ops-agent-repo.sh --also-install

sudo apt-get update

