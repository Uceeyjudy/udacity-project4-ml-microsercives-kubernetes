[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Uceeyjudy/udacity-project4-ml-microsercives-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Uceeyjudy/udacity-project4-ml-microsercives-kubernetes/tree/main)

# udacity-project4-ml-microsercives-kubernetes
This is a repository for Cloud DevOps Engineer Nanodegree project 4 which involves Operationalizing a Machine Learning Microservice API
Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
Project Tasks

This Machine Learning app predicts housing prices based on a number of factors such as average rooms in a home, data about highway access, teacher-to-pupil ratios, and so on. The dataset can be found on, the data source site.
INSTRUCTIONS TO RUN THE APP

Environment Setup.

    Run make setup to setup python virtual environment.
    Run make install to install dependencies.

Step 1: Install dependencies.

    Create pyhton virtual environment python -m venv ~/.devops and activate source ~/.devops/bin/activate
    Install dependenciesand use make lint to lint the Python and Docker file
    Install docker as described in the link.
    Install minikube as described here link
    Install hadolint with these commands curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && \ sudo install minikube-linux-amd64 /usr/local/bin/minikube

Step 2: Run Docker container

    Run the application on docker ./run_docker.sh
    Run ./make_predicton.sh to make predictions.

Step 3: Upload to Docker Hub

    Edit ./upload_docker.sh file, and run it to upload the docker image to docker hub

Step 4: Kubernetes deployment

    Run ./run_kubernetes.sh to deploy to kubernetes
    Run ./make_predicton.sh to make predictions.


Running app.py

    Standalone: python app.py
    Run in Docker: ./run_docker.sh
    Run in Kubernetes: ./run_kubernetes.sh

Kubernetes Steps

    Setup and Configure Docker locally
    Setup and Configure Kubernetes locally
    Create Flask app in Container
    Run via kubectl kubectl run ml-proj --image=$dockerpath
