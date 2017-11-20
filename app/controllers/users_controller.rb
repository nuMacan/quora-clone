
 #to go to sign-up page
get '/users/new' do
   erb :"users/new"
end

#to open the sign-in page
get '/users/sign_in' do
  erb :"/users/sign_in"
end 

#post is to submit the form to the database 
#this is to put the sign-up in the database(migrate table)
post '/users' do 
  user = User.new(params[:user])
  if user.save
    erb :"users/sign_in"
  else 
    user.errors
    redirect "users/new"
  end 
end 

get '/users/profile.erb' do
  erb :"users/profile"
end 

# get '/users/:id' do
#   # params[:id]
#   # p params[:id] = 1
#   # p params[:id] = 340
#   # p params[:id] = wassup
#     # p params[:id] = "1+1=2"

#     # find  (always find by id)
#     # User.find(1)

#     # find_by (specify what you fnd by)
#     # User.find_by(first_name : params[:first_name], last_name: params[:last_name])
#     # User.find_by(last_name: params[:last_name])

#   @user = User.find(params[:id]) #User.find(1)
#   # session[:user_id] = user.id
#   erb :"users/profile"
# end

# get '/users/profile/:id' do 
#     @user = User.find(params[:id])
#     session[:user_id] = user.id
#   erb :"/users/profile/:id"
# end 

# #controller
# @all_user = User.all
# #view file
# @all_user.each do |user|
#   <a href="/users/<%= user.id %>"> <%= user.first_name %>'s Profile </a>
# end
# <a href="/users/1+1=2">

# Rick's Profile #/users/1
# Sheng's Profile /users/2
# Nu's Profile /users/340










