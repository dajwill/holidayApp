require 'sinatra'
require 'cat_api'

class CatIndustriesApp < Sinatra::Base
	get '/cats' do
		@pictures = CatAPI.new.get_images(category: 'hats')
		erb :cats
	end
end

class MyWebApp < Sinatra::Base
  get '/' do
    erb :"index1"
  end
end