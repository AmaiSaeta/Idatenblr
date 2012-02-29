require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

configure do
	set :haml, { :format => :html5 }
	set :scss, Compass.sass_engine_options
	Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/' do
	"wait a minute please..."
end

