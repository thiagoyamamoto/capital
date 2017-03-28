class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.integer :guest
      t.references :category, index: true, foreign_key: true
      t.date :date
      t.string :message
      t.integer :status

      t.timestamps null: false
    end
  end
end
