require 'sinatra'

get '/template' do
	erb :index
end

get '/piglatin/:word' do
	@word = params[:word]

	@word =~ /^([^aeiou]+)(.+)/i
	@result = ($1 ? $2 + $1 + "ay" : word + "ay")

	erb :piglatinized, :layout => :app
		
end