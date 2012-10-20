class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :nutritional_info
      t.text :notes
      t.belongs_to :cafeterium

      t.timestamps
    end
  end
end
