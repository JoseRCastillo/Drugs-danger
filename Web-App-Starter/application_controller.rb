require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
post '/name' do
    #pull info out of params hash
    user_input=params[:birthday]
    @result=name(user_input)
    erb :results
  
  end
end