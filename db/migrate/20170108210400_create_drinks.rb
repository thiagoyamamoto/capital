class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.references :menu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
