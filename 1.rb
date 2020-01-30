require 'sinatra'

get '/' do
	erb :index
end


get '/contacts' do
	@title = 'Contacts'
	@message = 'Phone number: 1112222'
	erb  :message

end


get '/faq' do

	@title = 'FAQ'
	@message = 'Under construciton'
	erb :message
end


get '/something' do
 	@title = 'Something'
	@message =  'Bla bla'
	erb :message
end



post '/' do
	@login = params[:aaa]
	@password = params[:bbb]
if @login == 'admin' && @password == 'secret'
	 erb :welcome
else
	@message = "Access denied"
	erb :index
end
end
