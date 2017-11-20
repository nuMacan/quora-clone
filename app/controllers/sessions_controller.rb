#this is to sign in by checking user email and password 
post '/sessions' do 

	user = User.find_by(email: params[:user][:email])
		if user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			redirect :"/users/profile.erb"
		else 
			erb :"users/new"
		end
end 

#this is to log out
get '/sessions' do  
	session[:user_id] = nil
	erb :"static/index"
end 


