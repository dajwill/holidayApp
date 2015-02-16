require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    send_file erb :"index"
  end
end