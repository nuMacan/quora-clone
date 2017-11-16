require 'securerandom'
class User < ActiveRecord::Base

validates :email, presence: true, format: {with: /(http|https):\/\/www\..+.com/,
			message: "please enter correct email address"}, uniqueness: true

has_secure_password
validates :password, length: {in: 7..12}
validates :first_name, presence: true
validates :last_name, presence: true


	# This is Sinatra! Remember to create a migration!
end