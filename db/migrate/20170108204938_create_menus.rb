class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.references :service, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
