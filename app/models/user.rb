require 'securerandom'
class User < ActiveRecord::Base

validates :email, presence: true, format: {with: /(http|https):\/\/www\..+.com/,
			message: "please enter correct email address"}, uniqueness: true

has_secure_password



	# This is Sinatra! Remember to create a migration!
end