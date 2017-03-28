class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :description, limit: 20

      t.timestamps null: false
    end
  end
end
