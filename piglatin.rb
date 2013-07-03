require 'sinatra'

get '/piglatin/:word' do
	@word = params[:word]

	@word =~ /^([^aeiou]+)(.+)/i
	@result = ($1 ? $2 + $1 + "ay" : word + "ay")

	erb :piglatinized, :layout => :app
		
end