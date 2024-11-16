provider "azurerm" {
  features {}
  subscription_id = "547278e7-01d9-4f7c-9e1d-b32e9dc1d729"
}


resource "azurerm_resource_group" "db" {
  name     = "roshanrg"  # Resource group name updated
  location = "East US"
}


resource "azurerm_cosmosdb_mongo_account" "mongo_account" {
  name                = "roshanzamDB"  # Cosmos DB Mongo Account name updated
  location            = azurerm_resource_group.db.location
  resource_group_name = azurerm_resource_group.db.name
  offer_type          = "Standard"
  kind                = "MongoDB"
  
 
  server_version      = "4.2"  # MongoDB server version
  capacity_mode       = "Provisioned" # Use Provisioned (vCore)
  number_of_v_cores   = 2    # Number of vCores to provision
  storage_capacity_in_gb = 10 # Storage in GB
  
  
  geo_location {
    location          = azurerm_resource_group.db.location
    failover_priority = 0
  }

  geo_location {
    location          = "West US"
    failover_priority = 1
  }


  enable_automatic_failover = true
  consistency_policy {
    consistency_level = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix = 100000
  }

  # Enable MongoDB Features
  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }
}


resource "random_integer" "ri" {
  min = 10000
  max = 99999
}


resource "azurerm_cosmosdb_mongo_database" "mongo_db" {
  name                = "roshanDB"  # Mongo DB name
  resource_group_name = azurerm_cosmosdb_mongo_account.mongo_account.resource_group_name
  account_name        = azurerm_cosmosdb_mongo_account.mongo_account.name
  throughput          = 400  # Throughput in RU/s for the database (optional for vCore)
}

