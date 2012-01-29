# Generate a random number and return over HTTP.
# - A simple app to explore Ruby, Sinatra and Heroku in combination
#
require 'rubygems'
require 'sinatra'

get '/' do
  "#{Random.new.rand(1...6)}" # Roll the dice
end