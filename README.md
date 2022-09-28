
![Github Actions Build Status](https://github.com/rashmidesai09/Project6/actions/workflows/main.yml/badge.svg)

# Overview

In this project, I have build a Github repository from scratch and created a scaffolding that assisted in performing both Continuous Integration and Continuous Delivery. I have used Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle and integrated this project with Azure Pipelines to enable Continuous Delivery to Azure App Service. As part of this project a pre-trained, sklearn model has been provided that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home.

## Project Plan
Here is the link to the Trello board - https://trello.com/b/VtOt4mwf/building-ci-cd-pipelines

Here is the link to the spreadsheet that includes project - [Azure CI_CD Pipeline Project Estimates1.xlsx](https://github.com/rashmidesai09/Project6/files/9659259/Azure.CI_CD.Pipeline.Project.Estimates1.xlsx)




## Instructions
Architectural Diagram 
![architectural diagram](https://user-images.githubusercontent.com/97893144/192469299-7bf7f2a8-ada1-400d-bc3a-0d187dfedc9e.png)
The diagram shows the sequence of steps in the construction of the project. The code is pushed to a remote repository provider, in this case GitHub, which triggers the pipeline to be run on a "push" event. Building software involves many steps as seen above, such as installing dependencies, linting, testing, and compiling the code. Primary goal is to be able to automate all of these individual steps, so that they can be run with a single command—and a Makefile is one of the most widespread ways of achieving this goal. To do continuous integration, we need a build server—a centralized machine that is dedicated to continuously building the project every time code is committed to it. GitHub actions is used as our build server. One of the things that makes GitHub Actions extremely convenient is that it is integrated with GitHub, which means that we can have it run builds automatically whenever we commit code to our GitHub repo. 
In the Continuous Delivery step, the repository on GitHub is connected with Azure Pipelines(a cloud-native build server) to generate the build package after a successful build. This pipeline should connect to a pre-defined Azure webapp and deploy and update the code there.
Confirmation that the deployment worked successfully is done by making a POST request, by passing input parameters in JSON and receiving a prediction response.
The shell script is responsible for sending some input data to the application via the appropriate port. Each numerical value represents some feature that is important for determining the price of a house in Boston. The source code is responsible for passing that data through a trained, machine learning model, and giving back a predicted value for the house price.

## Project succesfully cloned into Azure cloud shell
<img width="700" alt="image" src="https://user-images.githubusercontent.com/97893144/192559986-5f76c15f-6887-4b8b-8aab-ccca95788e46.png">

Passing tests that are displayed after running the `make all` command from the `Makefile`
![image](https://user-images.githubusercontent.com/97893144/192557041-eb5b2f8c-7ef7-4c36-9d72-d558b1a986d0.png)

<img width="790" alt="image" src="https://user-images.githubusercontent.com/97893144/192556009-dfc63fff-10ae-4a57-9913-12cc20ca5093.png">

![2 local tests on azure cloud shell](https://user-images.githubusercontent.com/97893144/192625823-697a771a-4a87-4dcf-8484-1f841813218d.jpg)

![main yml ](https://user-images.githubusercontent.com/97893144/192626027-6102ddec-2fd6-46aa-bc55-c44694aa0bd4.jpg)


![image](https://user-images.githubusercontent.com/97893144/192557562-b0ec2f9d-24ed-4c0e-94f0-521614f30b56.png)

## Successful prediction from deployed flask app in Azure Cloud Shell. 
 Project ![prediction value 20 35](https://user-images.githubusercontent.com/97893144/192558429-49a5fea2-1d49-4425-ba65-98de63f1d048.jpg)
 
Successful deploy of the project in Azure Pipelines

![build stage ](https://user-images.githubusercontent.com/97893144/192558661-565c237a-8f47-4b6f-9f9c-21fb98ae5346.jpg)

## Application running against a load test with locust

The Makefile has a step load-test that is run when calling make all, that runs locust, an application to load test webapps in headless mode.
This command is run as
locust -f locustfile.py --headless -u 10 -r 1 -H http://localhost:5000 -t 50s --check-fail-ratio 0.08 \ --only-summary

<img width="818" alt="image" src="https://user-images.githubusercontent.com/97893144/192680713-ca505792-bfb0-4d08-ba4f-228b5bcec6cf.png">

<img width="843" alt="image" src="https://user-images.githubusercontent.com/97893144/192680800-5a08d03c-27eb-48c4-a570-2059c9938378.png">


![build stage and deploy](https://user-images.githubusercontent.com/97893144/192558798-b6cb7f85-0417-483e-a366-1790453124c5.jpg)

![build stage and deploy web app successful](https://user-images.githubusercontent.com/97893144/192558737-655ef8a0-ea23-4909-8b75-d64dded081b4.jpg)

## Azure webapp screenshot
![webapp screenshot](https://user-images.githubusercontent.com/97893144/192625092-07773f22-9d7b-4d93-829c-6cfcf2547c6a.jpg)

## Azure app service screenshot is as below -

<img width="1118" alt="image" src="https://user-images.githubusercontent.com/97893144/192681501-92b45e56-3f8a-4d8c-b983-4e1e6a6334f1.png">


Output of streamed log files from deployed application - https://mywebapp10021990.scm.azurewebsites.net/api/logs/docker
![stream log](https://user-images.githubusercontent.com/97893144/192625021-608513f0-f09c-47e0-8988-dfb0ad761971.jpg)

CD with Azure pipelines after making changes in app.py
![after changes](https://user-images.githubusercontent.com/97893144/192625245-2b6f5a93-c7c2-4dea-88e0-90d269dbcfce.jpg)


## Enhancements

1.Direct deployment from GitHub Actions to Azure WebApp Service
2.Adding more test cases to improve the application
3.Creating a UI for making predictions

## Demo 
https://www.youtube.com/watch?v=CA0Lrr52S-w


