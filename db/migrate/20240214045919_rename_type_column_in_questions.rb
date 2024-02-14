class RenameTypeColumnInQuestions < ActiveRecord::Migration[7.1]
  def change
    rename_column :questions, :type, :questiontype
  end
end
