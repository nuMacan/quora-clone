#this is to log in 

post '/sessions' do 

	p user = User.find_by(email: params[:user][:email])
		if user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			redirect "/users/#{user.id}"
		else 
			erb :"users/new"
		end
end 

#this is to log out
get '/sessions' do  
	session[:user_id] = nil
	erb :"static/index"
end 

