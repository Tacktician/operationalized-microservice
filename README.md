[![CircleCI](https://circleci.com/gh/spider-sauce/udacdity-operationalize-a-microservice.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/spider-sauce/udacdity-operationalize-a-microservice)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Task Summary

1. Run project locally via `python`, and run code linters to check syntax:
  * Install Python3.7
  * Setup python `venv`
    ```python
    python3 -m venv ~/.devops
    source ~/.devops/bin/activate
    ```
   * Run `make install`
   * Run `make lint`
2. Run project on a local Docker container:
  * Run `./run_docker.sh`
  * Run `./make_prediction.sh`
  * Expected Console Output:
    ```json
    Port: 8000
    {
      "prediction": [
      20.35373177134412
      ]
    }
    ```
3. Run project on a local kubernetes cluster (`minikube`):
  * Download and install Minikube
  * Run `minikube`
  * Run `./run_kubernetes.sh`
  > You may have to run the script again in order to wait for the pod to finish the creation cycle.
  * Run `./make_prediction.sh`
  * Expected console output:
  ```sh
  Forwarding from 127.0.0.1:8000 -> 80
  Forwarding from [::1]:8000 -> 80
  Handling connection for 8000
  ```
