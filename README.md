
# Example:
![CircleCI](https://circleci.com/gh/Sabri-Bouchlema/project-ml-microservice-kubernetes.svg?style=svg)

## Project Overview

This project contain a `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Instructions

You will find below how to configure the environment and run the app locally.

## Setup the Environment

* Create a virtualenv using `make setup`
* Run `source ~/.devops` to activate the virtualenv
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Push image to dockerHub: `./upload_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`

### Files description

* `.circleci/config.yml` - CircleCI integration code to checks the project code for errors.
* `app.py` - Application source code.
* `Dockerfile` - Instructions for docker image build.
* `make_prediction.sh` - Shell script used for sending data to the containerized application via the appropriate port for testing purposes.
* `Makefile` - This file defines a set of tasks to be executed to setup the environment.
* `requirements.txt` - List all the dependencies needed to run the application.
* `run_docker.sh` - Shell script used to run and build a docker image.
* `upload_docker.sh` - Shell script used to upload the image to docker hub.
* `run_kubernetes.sh` - Shell script used to run the app in kubernetes using the published docker image.
