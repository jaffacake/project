# Load the rails application
require File.expand_path('../application', __FILE__)

# Table prefix
config.active_record.table_name_prefix = "fyp_"

# Initialize the rails application
Crm::Application.initialize!
