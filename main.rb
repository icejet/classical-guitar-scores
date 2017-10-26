require 'slim'
require 'sinatra'
require 'thin'
require 'sinatra/flash'
require_relative './data.rb'

get '/' do
  @composers = Composer.all
  slim :composers
end
