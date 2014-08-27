# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Nomster::Application.initialize!

Nomster::Application.configure do
	config.action_mailer.default_url_options = { :host => 'nomster-maya.herokuapp.com' }

end