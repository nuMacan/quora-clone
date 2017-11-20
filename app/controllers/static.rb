#this is needed to open the first page you want to show
#when people open your site

get '/' do
  erb :"static/index"
end

get '/static/home.erb' do 
  erb :"/static/home"
end