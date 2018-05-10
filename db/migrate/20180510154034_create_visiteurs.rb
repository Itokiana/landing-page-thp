class CreateVisiteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :visiteurs do |t|
      t.string :email
      t.integer :statut

      t.timestamps
    end
  end
end
