class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :kcal
      
      t.timestamps
    end
  end
end
