# Overview

In this project, I have build a Github repository from scratch and created a scaffolding that assisted in performing both Continuous Integration and Continuous Delivery. I have used Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle and integrated this project with Azure Pipelines to enable Continuous Delivery to Azure App Service. As part of this project a pre-trained, sklearn model has been provided that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home.

## Project Plan
Here is the link to the Trello board - https://trello.com/invite/b/VtOt4mwf/3046b515ba585b4fb042099e43a46929/project-management

Here is the link to the spreadsheet that includes project -
[Azure CI_CD Pipeline Project Estimates.xlsx](https://github.com/rashmidesai09/Project6/files/9653055/Azure.CI_CD.Pipeline.Project.Estimates.xlsx)


## Instructions
Architectural Diagram 
![architectural diagram](https://user-images.githubusercontent.com/97893144/192469299-7bf7f2a8-ada1-400d-bc3a-0d187dfedc9e.png)
The diagram shows the sequence of steps in the construction of the project. The code is pushed to a remote repository provider, in this case GitHub, which triggers the pipeline to be run on a "push" event. Building software involves many steps as seen above, such as installing dependencies, linting, testing, and compiling the code. Primary goal is to be able to automate all of these individual steps, so that they can be run with a single command—and a Makefile is one of the most widespread ways of achieving this goal. To do continuous integration, we need a build server—a centralized machine that is dedicated to continuously building the project every time code is committed to it. GitHub actions is used as our build server. One of the things that makes GitHub Actions extremely convenient is that it is integrated with GitHub, which means that we can have it run builds automatically whenever we commit code to our GitHub repo. 
In the Continuous Delivery step, the repository on GitHub is connected with Azure Pipelines(a cloud-native build server) to generate the build package after a successful build. This pipeline should connect to a pre-defined Azure webapp and deploy and update the code there.
Confirmation that the deployment worked successfully is done by making a POST request, by passing input parameters in JSON and receiving a prediction response.
The shell script is responsible for sending some input data to the application via the appropriate port. Each numerical value represents some feature that is important for determining the price of a house in Boston. The source code is responsible for passing that data through a trained, machine learning model, and giving back a predicted value for the house price.

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
2.Adding more test cases to improve the application
3.Creating a UI for making predictions

## Demo 
https://youtu.be/wguLb4Mp1Uk


