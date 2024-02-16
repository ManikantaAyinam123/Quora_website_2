class AddUserIdToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :Questions, :user_id, :integer
  end
end
