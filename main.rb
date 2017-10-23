require 'slim'
require 'sinatra'
require 'thin'

get '/' do
  slim :composers
end