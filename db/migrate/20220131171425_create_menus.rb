class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.integer :week_number
      t.string :day_menu
      t.string :name

      t.timestamps
    end
  end
end
