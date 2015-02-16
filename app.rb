require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    erb :"index1"
  end
end