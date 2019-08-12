class CreateUsersTasksJoinTable < ActiveRecord::Migration[6.0]
  def change
  	#note that order doesn't matter here
  	create_join_table :users, :tasks do |t|
  		t.index :user_id
  		t.index :task_id
  	end
  end
end
