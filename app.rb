require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
  	puts params
  	erb :index
  end

  get '/holidays' do
    @holidays = HolidApi.get(country: params['country'], year: params['year'], month: params['month'])
    @birthHolidays = HolidApi.get(country: 'us', year: '1993', month: '6')

    erb :holidays
  end
end