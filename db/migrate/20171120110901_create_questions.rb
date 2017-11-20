class CreateQuestions < ActiveRecord::Migration[5.0]
	def change
		create_table :questions do |t|
			t.string :the_question
			t.references :user, foreign_key: true
			
			t.timestamp
		end 

	end
end

