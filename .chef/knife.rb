raise "You must set the ORGNAME environment variable" if ENV['ORGNAME'].nil?
current_dir = File.dirname(__FILE__)
user = ENV['OPSCODE_USER'] || ENV['USER']
url = ENV['CHEF_SERVER_URL'] || "https://api.opscode.com/organizations"
log_level                :info
log_location             STDOUT
node_name                user
client_key               "#{ENV['HOME']}/.chef/#{user}-#{ENV['ORGNAME']}.pem"
validation_client_name   "#{ENV['ORGNAME']}-validator"
validation_key           "#{ENV['HOME']}/.chef/#{ENV['ORGNAME']}-validator.pem"
chef_server_url          "#{ENV['CHEF_SERVER_URL']}/#{ENV['ORGNAME']}"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

role_path                ["#{current_dir}/../roles"]

# all your credentials are belong to us

# OpenStack
knife[:openstack_username] = ENV['OS_USERNAME']
knife[:openstack_password] = ENV['OS_PASSWORD']
knife[:openstack_auth_url] = ENV['OS_AUTH_URL']
knife[:openstack_tenant]   = ENV['OS_TENANT']
