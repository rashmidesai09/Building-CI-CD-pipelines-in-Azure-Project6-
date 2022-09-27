# Overview

In this project, I have build a Github repository from scratch and created a scaffolding that assisted in performing both Continuous Integration and Continuous Delivery. I have used Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle and integrated this project with Azure Pipelines to enable Continuous Delivery to Azure App Service. As part of this project a pre-trained, sklearn model has been provided that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home.

## Project Plan
https://trello.com/invite/b/VtOt4mwf/3046b515ba585b4fb042099e43a46929/project-management
A link to a spreadsheet that includes the original and final project plan can be found in the repository itself.

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

1.Direct deployment from GitHub Actions to Azure WebApp Service

## Demo 
https://youtu.be/wguLb4Mp1Uk


