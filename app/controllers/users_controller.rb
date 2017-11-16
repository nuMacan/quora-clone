
get '/users/new.erb' do #this to get the form 
   erb :"users/new"
end

post '/users' do #post is to submit the form to the database
  p params
  user = User.new(params[:user])
  if users.save
    redirect "users/new"
  else 
    p users.errors
    redirect "/"
  end 
end 

get '/users' do
	erb :"users/user_profile"
end 