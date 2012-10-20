class CreateCafeteria < ActiveRecord::Migration
  def change
    create_table :cafeteria do |t|
      t.string :name
      t.string :location
      t.string :open_time
      t.string :close_time

      t.timestamps
    end
  end
end
