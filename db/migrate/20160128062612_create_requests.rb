class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.date :due_date
      t.integer :method
      t.string :description
      t.float :amount
      t.integer :request_type
      t.integer :receiver_id
      t.integer :user_id

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
