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
| DIS StreamName | Flexible Engine Project DIS StreamName | dis-liveobject |
| DIS AK | Flexible Engine Credential correspond to Flexible Engine Access Key (AK) | NVR2bWRsbWRtczE1ZUx= |
| DIS SK | Flexible Engine Credential correspond to Flexible Engine Secret Key (SK) | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |
| DIS User Name | Flexible Engine DIS Credential correspond to Flexible Engine UserName | username.namhee@domain.com |
| DIS Password | Flexible Engine DIS Credential correspond to Flexible Engine Password | Wqt5TbUyemsJ58nMZYxGHacmuQnOyRhwCPaNofY2 |

## 2. (Optional) Create Cloud Container Engine (CCE) on Flexible Engine

In order to run the docker image on Flexible Engine, Flexible Engine Cloud Container Engine (CCE) can be used to deploy the connector container images

### 2.1 Create the Kubernetes Cluster

The detail description on how to create a Kubernetes Cluster in available here [(Create Hybrid Cluster with CCE)](https://docs.prod-cloud-ocb.orange-business.com/usermanual2/cce/cce_01_0028.html)

### 2.2 Create the Storage to persist the connector data

### 2.3 Create the Secret to store sensitive data

For security reason, the sensitive Data such as API KEYs are kept inside Secret and the value are encoded using base64 
In order to encode the data, you can use online encoding tools (https://www.base64encode.org/)

| Information | Description | Example Value (ENCODED in base64) | Example Value (NON ENCODED base64) |
| --- | --- | --- | --- |
| LO_API_KEY | Life Object API Key | NjAzODE2ZjIwOTczNGE0MDg0MjFlNzEyYzAxNGRiMDIx= | d2bf5cf323894b4bae08beac9cc4276e |
| DIS_AK | Flexible Engine Credential correspond to Flexible Engine Access Key (AK) | V09ZUDlLVU1VSlQ2QlZTR1pGUkEx= | xxxxxxx|
| DIS_SK | Flexible Engine Credential correspond to Flexible Engine Secret Key (SK) | V3F0NVRiVXhlbXNKNThuTVpZeEdIYWNtdVFuT3lSaHdDUGFOb2ZZNAx== |xxxxxxx|
| DIS_TOKEN_USERNAME | Flexible Engine Credential correspond to User | ZXJuZXN0Lm5hbS5oZWUx= |  xxxxxxx|
| DIS_TOKEN_PASSWORD | Flexible Engine Credential correspond to Password  | NVR2bWRsbWRtczE1ZUAx= | xxxxxxx|


## 3. Deploy the Lo2FE_Connector on Flexible Engine CCE

The Lo2FE connector is available as docker image available on Docker Hub at [here](https://hub.docker.com/u/enamhee).

It is possible to deploy the Lo2FE connector using two methods:
  - Through Flexible Engine CCE User Interface
  - Through Kubectl Command line


### 3.1 Deploying Through Flexible Engine CCE User Interface

You can use Flexible Engine CCE GUI to deploy the Lo2FE Connector Docker Image

Below is the Environment Parameter required by the images


| Environment Parameter | Description | Value |
| --- | --- | --- |
| NODE_RED_CREDENTIAL_SECRET | Credential Secret to encode the  | lo2fe-secret | 
| FLOWS | NodeRed Flow Name  | flows_nhe-livebobject-connector.json |
| DIS_ENDPOINT | DIS End Point. Please refer to  [Flexible Engine EndPoint](https://docs.prod-cloud-ocb.orange-business.com/endpoint/index.html) | https://dis.eu-west-0.prod-cloud-ocb.orange-business.com |  
| DIS_PROJECT | Flexible Engine Project Id or Region where the DIS has been created | eu-west-0 |  
| DIS_STREAMNAME | Flexible Engine Project DIS StreamName | eu-west-0 |  
| DIS_TOKEN_USERNAME | Flexible Engine Credential correspond to User Name | Value is stored in Secret *lo2fe-secret* (DIS_TOKEN_USERNAME)|  
| DIS_TOKEN_PASSWORD | Flexible Engine Credential correspond to Password | Value is stored in Secret *lo2fe-secret* (DIS_TOKEN_PASSWORD)|  
| DIS_AK | Flexible Engine Credential correspond to Access Key (AK) | Value is stored in Secret *lo2fe-secret* (DIS_AK)| 
| DIS_SK | Flexible Engine Credential correspond to Secredt Key (SD) | Value is stored in Secret *lo2fe-secret* (DIS_SK)| 
| LO_URI | URI to connect to Live Object | ssl://liveobjects.orange-business.com:8883 |
| LO_API_KEY | API Key with relevant right to read Live Object FIFO | Value is stored in Secret *lo2fe-secret* (LO_API_KEY)| 


### 3.2 Deploying Through Kubectl commande line

## 4. Logging to Admin Console

Login : admin
Password : lo2fepassword

## 4. (Optional) Build the Lo2FE_Docker image from GIThub repository
