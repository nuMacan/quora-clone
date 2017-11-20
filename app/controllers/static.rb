#this is needed to open the first page you want to show
#when people open your site

get '/' do
  erb :"static/index"
end

get "/static/home" do 
   @all_questions = Question.all
  erb :"/static/home"
end

get "/static/home" do
	erb :"static/home"
end 


# get '/question/home' do
# 	@all_questions = Question.all
# 	erb :"/qna/question_and_answers"
# end 