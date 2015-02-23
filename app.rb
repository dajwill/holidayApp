require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
    @holidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
    @specialHolidays = HolidApi.get(country: 'us', year: '1993', month: '6')
    erb :index
  end
end