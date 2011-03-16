# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class GigsExtension < Radiant::Extension
  version "1.0"
  description "Importing the gigs from the old system"
  url "http://mtc-worldwide.com"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    # tab 'Content' do
    #   add_item "Gigs", "/admin/gigs", :after => "Pages"
    # end
  end
end
