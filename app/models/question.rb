require 'securerandom'
class Question < ActiveRecord::Base

validates :the_question, presence: true


	# This is Sinatra! Remember to create a migration!
end