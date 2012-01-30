# Generate a random number and return over HTTP.
# - A simple app to explore Ruby, Sinatra and Heroku in combination
#
require 'sinatra'

get '/' do
	from = params[:from].to_i
	to = params[:to].to_i

	# Missing params or bad params?
	if from == to
		to = from + 1
	end
	
  	"#{Random.new.rand(from...to)}"
end