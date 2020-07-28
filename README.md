# Lo2FE_Docker

This docker image includes NodeRed connector allowing connection to LiveObject FIFO and everytime a message is published in Live Object FIFO, the message will be delivered and published to Flexible Engine DIS (Data Injection Service).

## 1. Pre-Requisite

The following service need to be provisionned on Flexible Engine and Live Object 
  - Live Object Account 
  - Live Object FIFO
  - Live Object API Key (https://liveobjects.orange-business.com/doc/html/lo_manual_v2.html#REST_MQTT_APP)

### 1.1 Live Object FIFO and API 

The following information are required to connect and collect the Live Object FIFO messages:

| Information | Description | Value Exemple |
| --- | --- | --- |
| Live Object API Key | API Key with relevant right to read Live Object FIFO | d2bf5cf323894b4bae08beac9cc4276b |
| Live Object URI | URI to connect to Live Object | ssl://liveobjects.orange-business.com:8883 |

### 1.2 Flexible Engine 

The following information are required to connect to Flexible Engine Data Injection Services (DIS):

| Information | Description | Example Value |
| --- | --- | --- |
| DIS EndPoint | Endpoint to connect to Flexible Engine DIS Service | https://dis.eu-west-0.prod-cloud-ocb.orange-business.com" |
| DIS Project | Flexible Engine Project into which DIS Service has been created | eu-west-0 |
| DIS AK | Flexible Engine Credential correspond to Flexible Engine Access Key (AK) | NVR2bWRsbWRtczE1ZUx= |
| DIS SK | Flexible Engine Credential correspond to Flexible Engine Secret Key (SK) | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |
| DIS User Name | Flexible Engine DIS Credential correspond to Flexible Engine UserName | username.namhee@domain.com |
| DIS Password | Flexible Engine DIS Credential correspond to Flexible Engine Password | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |

## 2. (Optional) Create Cloud Container Engine (CCE) on Flexible Engine

In order to run the docker image on Flexible Engine, Flexible Engine Cloud Container Engine (CCE) can be used to deploy the connector container images

### 2.1 Create the Kubernetes Cluster

The detail description on how to create a Kubernetes Cluster in available here [(Create Hybrid Cluster with CCE)](https://docs.prod-cloud-ocb.orange-business.com/usermanual2/cce/cce_01_0028.html)

### 2.2 Create the Storage to persist the connector data

### 2.3 Create the Secret

The following secret need to be created 

| Information | Description | Example Value (encoded in base64) |   Example Value (non encode base64) ]
| --- | --- | --- | ---- |

| LO_API_KEY | Life Object API Key | NVR2bWRsbWRtczE1ZUx= |
| DIS AK | Flexible Engine Credential correspond to Flexible Engine Access Key (AK) | NVR2bWRsbWRtczE1ZUx= |
| DIS SK | Flexible Engine Credential correspond to Flexible Engine Secret Key (SK) | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |
| DIS AK | Flexible Engine Credential correspond to Flexible Engine Access Key (AK) | NVR2bWRsbWRtczE1ZUx= |
| DIS SK | Flexible Engine Credential correspond to Flexible Engine Secret Key (SK) | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |
| DIS Token User Name | Flexible Engine DIS Credential correspond to Flexible Engine UserName | username.namhee@domain.com |
| DIS Token Password | Flexible Engine DIS Credential correspond to Flexible Engine Password | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |


## 3. Build the Lo2FE_Docker image from GIThub repository

## 4. Configure and Deploy the Lo2FE_Docker image on Flexible Engine CCE
