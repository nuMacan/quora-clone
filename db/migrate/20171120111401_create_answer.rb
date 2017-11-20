class CreateAnswers < ActiveRecord::Migration[5.0]
	def change
		create_table :Answers do |t|
			t.string :answers
			t.string :user_answer_id
			
			

			t.timestamp
		end 

	end
end

