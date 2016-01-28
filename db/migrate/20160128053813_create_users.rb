class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :staff_id
      t.string :string
      t.string :role

      t.timestamps null: false
    end
  end
end
