#!/usr/bin/env bash
# Run script only in home directory


#cloning github repo
git clone git@github.com:rashmidesai09/Project6.git

az webapp up --name mywebapp10021990 --resource-group azuredevops --runtime "PYTHON:3.7"
