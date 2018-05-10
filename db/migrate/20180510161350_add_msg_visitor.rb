class AddMsgVisitor < ActiveRecord::Migration[5.2]
  def change
    add_column :visiteurs, :message, :text
  end
end
