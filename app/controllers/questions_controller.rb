get '/qna/question' do
	erb :"qna/questions"
end 



post '/questions' do
	question = Question.new(params[:question])
	if question.save
		erb  :"qna/questions"
		# redirect "/user/question/#{question.id}"
	else
		p url.errors
	end
end

get '/qna/questions/:id' do 
  questions = Question.all
  erb :"static/home"
end




