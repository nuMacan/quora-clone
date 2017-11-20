class CreateQuestions < ActiveRecord::Migration[5.0]
	def change
		create_table :questions do |t|
			t.string :question
			t.string :user_question_id 
			

			t.timestamp
		end 

	end
end

