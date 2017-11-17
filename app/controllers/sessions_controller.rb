

post '/sessions' do
	if user = User.find_by(email: params[:user][:email])
		if user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			erb :"static/home"
		else 
			erb :"users/new"
		end
	else
		erb :"users/new"
	end
end 

get '/sessions' do
	erb :"static/index"
end 


# delete '/users/:id' do
# 	erb :"users/index"
# end