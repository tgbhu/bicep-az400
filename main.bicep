param storageName string = '${uniqueString(resourceGroup().id)}str'
param location string = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
