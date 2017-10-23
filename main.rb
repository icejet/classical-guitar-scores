require 'slim'
require 'sinatra'
require 'thin'
require 'sinatra/flash'
require_relative './data.rb'

get '/' do
  slim :composers
end