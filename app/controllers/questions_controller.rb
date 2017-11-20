get '/qna/questions' do
	erb :"qna/questions"
end 



post '/questions' do
	question = Question.new(params[:question])
	if question.save
		redirect "static/home"
		# redirect "/user/question/#{question.id}"
	else
		p url.errors
		redirect "/"
	end
end

get '/qna/questions/:id' do 
  questions = Question.all
  erb :"static/home"
end


