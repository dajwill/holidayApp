require 'sinatra'
require 'holidapi'
require 'date'

class MyWebApp < Sinatra::Base
  get '/' do
    @date = Time.now
    @holidays = HolidApi.get(country:'us', year:'@date.year', month:'@date.month')
    @specialHolidays = HolidApi.get(country:'us', year:'1993', month:'6')
    erb :index
  end
end