environment            = "dev"
sql_local_dev_ip       = "177.103.119.154" # set by setup-azure.ps1
project_name           = "agenticnet"
aspnetcore_environment = "Development"
location               = "eastus"
ai_location            = "eastus2"
sql_location           = "westus"

sql_database_name               = "agenticnet"
sql_sku                         = "GP_S_Gen5_1"
sql_min_capacity                = 0.5
sql_auto_pause_delay_in_minutes = 15

ai_deployments = [
  {
    name          = "chat"
    format        = "OpenAI"
    model_name    = "gpt-4o-mini"
    model_version = "2024-07-18"
    capacity      = 10
    sku_name      = "GlobalStandard"
  },
  {
    name          = "embeddings"
    format        = "OpenAI"
    model_name    = "text-embedding-ada-002"
    model_version = "2"
    capacity      = 10
    sku_name      = "Standard"
  },
  {
    name          = "deepseek-r1"
    format        = "DeepSeek"
    model_name    = "DeepSeek-R1"
    model_version = "1"
    capacity      = 1
    sku_name      = "GlobalStandard"
  },
]

search_location = "eastus"
search_sku      = "free"
search_topk     = 5

# Set to true and push to run a full terraform destroy instead of apply
destroy_environment = false