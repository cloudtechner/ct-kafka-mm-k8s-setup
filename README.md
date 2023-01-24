# Kafka Mirror Maker on Kubernetes

This repository contains Helm charts for deploying Kafka mirror maker on Kubernetes Cluster

## Setup Instructions

* Build kafka mirrormaker docker image with **Dockerfile** and push to Private Image registry

	`docker build -t <IMAGE_NAME:TAG> .`

* Update following details in mm2.properties 
	* Source and target kafka clusters names
	* Source and target kafka clusters bootstrap servers details

* Modify **values.yaml** and update image name and image tag for kafka mirrormaker with your own docker registry details

* Connect to Kuberenets Cluster and install helm charts on Kubernetes with updated **values.yaml** file from the current directory
 
	`helm install mirror-maker .` 
 
