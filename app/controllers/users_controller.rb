
get '/users/new.erb' do #this to get the form 
   erb :"users/new"
end

post '/users' do #post is to submit the form to the database
  p params
  user = User.new(params[:user])
  if users.save
    redirect "users/profile"
  else 
    p users.errors
    redirect "users/new"
  end 
end 

get '/users' do
	erb :"users/profile"
end 