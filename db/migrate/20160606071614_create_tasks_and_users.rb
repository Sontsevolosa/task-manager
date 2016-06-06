class CreateTasksAndUsers < ActiveRecord::Migration
  def change
    create_table :tasks_users do |t|
    	t.belongs_to :tasks, index: true
    	t.belongs_to :users, index: true
    end
  end
end
