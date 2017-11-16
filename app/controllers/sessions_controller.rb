post '/sessions' do
	if user = User.find_by(email: params[:email])
		if user.authenticate(params[:password])
			session[:user_id] = user.id
			erb :"static/home"
		else 
			erb :"users/new"
		end
	else
		erb :"users/new"
end 

get '/logout do'
	session[user_id]=nil
	erb :"static/index"
end 