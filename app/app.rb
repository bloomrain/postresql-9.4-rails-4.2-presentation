require 'gmail'
require 'yaml'
require 'base64'
require 'gitlab'
require 'active_resource'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE # HACK: turn of sertificate check..

configs = YAML.load( File.read('secrets.yml') )
password = configs['gmail']['password']

Gitlab.configure do |config|
  config.endpoint       = 'https://gitlab.necolt.com/api/v3' # API endpoint URL, default: ENV['GITLAB_API_ENDPOINT']
  config.private_token  = configs['gitlab']['private_token']       # user's private token, default: ENV['GITLAB_API_PRIVATE_TOKEN']
end
Gitlab.projects(:per_page => 5)

username = configs['gmail']['username']
password = configs['gmail']['password']
# Gmail.new( username, Base64.decode64(password) ) do |gmail|
#   gmail.peek = true
#   gmail.mailbox('Redmine/Goldenlisting').emails(:unread, subject: '(closed)').each do |email|
#     p email.subject
#   end
# end
