require 'slim'
require 'sinatra'
require 'thin'
require 'sinatra/flash'
require_relative './data.rb'

get '/' do
  redirect to('/composer')
end

get '/composer' do
  @composers = Composer.all
  slim :composers
end

get '/composer/new' do
  @composer = Composer.new
  slim :new_composer
end

get '/composer/edit/:id' do
  @composer = Composer.get(params[:id])
  slim :edit_composer
end

post '/composer' do
  Composer.create(params[:composer])
  redirect to('/')
end

get '/composer/score/new' do
  @composer = Composer.new  
  slim :new_score
end

put '/composer/:id' do
  @composer = Composer.get(params[:id])
  @composer.update(params[:composer])
  redirect to("/composer/#{@composer.id}")
end

get '/composer/:id' do
  @composer = Composer.get(params[:id])
  slim :composer_details
end