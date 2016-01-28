class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.date :request_date
      t.date :due_date
      t.string :method
      t.string :description
      t.float :amonunt
      t.string :receiver_name
      t.string :request_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
