ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "wdi_app"
)

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
