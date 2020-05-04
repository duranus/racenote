class RemoveTestColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :test, :string
  end
end
