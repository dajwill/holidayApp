require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
  	erb :index
  end

  get '/holidays' do
    @holidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
    @birthHolidays = HolidApi.get(country: 'us', year: '1993', month: '6')

    erb :holidays
  end
end