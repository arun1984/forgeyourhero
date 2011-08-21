class AddUserIdToHeros < ActiveRecord::Migration
  def change
    add_column :heros, :user_id, :string
  end
  
    add_index :heros, :user_id
end
