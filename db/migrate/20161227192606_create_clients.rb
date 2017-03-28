class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :description
      t.string :website
      t.attachment :picture

      t.timestamps null: false
    end
  end
end
