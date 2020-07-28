# Lo2FE_Docker

This docker image includes NodeRed connector allowing connection to LiveObject FIFO and everytime a message is published in Live Object FIFO, the message will be delivered and published to Flexible Engine DIS (Data Injection Service).

## 1. Pre-Requisite

The following service need to be provisionned on Flexible Engine and Live Object 
  - Live Object Account 
  - Live Object FIFO
  - Live Object API Key (https://liveobjects.orange-business.com/doc/html/lo_manual_v2.html#REST_MQTT_APP)
  
## 2. (Optional) Create Cloud Container Engine (CCE) on Flexible Engine

In order to run the docker image on Flexible Engine, Flexible Engine Cloud Container Engine (CCE) can be used to deploy the connector container images

The detail description on how to create a Kubernetes Cluster in available [here](https://docs.prod-cloud-ocb.orange-business.com/usermanual2/cce/cce_01_0028.html)


## 3. Build the Lo2FE_Docker image from GIThub repository

## 4. Configure and Deploy the Lo2FE_Docker image on Flexible Engine CCE
