require 'slim'
require 'sinatra'
require 'thin'
require 'sinatra/flash'
require_relative './data.rb'

get '/' do
  @composers = Composer.all
  slim :composers
end

get '/composer/new' do
  @composer = Composer.new
  slim :new_composer
end

post '/composer' do
  Composer.create(params[:composer])
  redirect to('/')
end