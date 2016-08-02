class CreateVisiters < ActiveRecord::Migration
  def change
    create_table :visiters do |t|
      t.string :name
      t.integer :mob
      t.string :address
      t.string :message
      t.string :email

      t.timestamps null: false
    end
  end
end
