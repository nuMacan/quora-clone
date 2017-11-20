
class CreateAnswers < ActiveRecord::Migration[5.0]
	def change
		create_table :Answers do |t|
			t.string :the_answer
			t.references :question, foreign_key: true
			t.references :user, foreign_key: true

			t.timestamp
		end 

	end
end

