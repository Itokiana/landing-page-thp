class AddIndexToEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :visiteurs, :email, unique: true
  end
end
