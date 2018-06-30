# spring-boot-sample-service

https://docs.microsoft.com/en-us/azure/container-registry/container-registry-tutorial-quick-build#prerequisites

git clone https://github.com/blissfish/spring-boot-sample-service.git
cd spring-boot-sample-service/
ACR_NAME=BlissedContainerRegistry
RES_GROUP=$ACR_NAME
az group create --resource-group $RES_GROUP --location eastus
az acr create --resource-group $RES_GROUP --name $ACR_NAME --sku Standard --location eastus
az acr build --registry $ACR_NAME --image spring-boot-sample-service:v1

AKV_NAME=$ACR_NAME-vault

az keyvault create --resource-group $RES_GROUP --name $AKV_NAME
