class Gig < ActiveRecord::Base
  def self.table_name() "tourManager" end
  ActiveRecord::Base.configurations["db1"] = {
    :adapter  => 'mysql',
    :database => 'sebhan_tourcontrol',
    :username => 'michlen',
    :password => '2460chato?!',
    :host     => 'public-enemy.909.be'}
  establish_connection "db1"
    
  def info
    "#{name} - #{city}"
  end
  
  def url
    ticketUrl || 'http://www.mtc-worldwide.com/'
  end
  
  def date
    dateTime.strftime("%d %B %Y")
  end
end