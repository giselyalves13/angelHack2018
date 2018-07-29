class AddMentorToMentorando < ActiveRecord::Migration[5.1]
  def change
  	create_table "user_mentor", :force => true, :id => false do |t|
	  t.integer "user_id", :null => false
	  t.integer "user_mentor_id", :null => false
	end
  end
end
