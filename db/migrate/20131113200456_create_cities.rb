class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.integer :country_id

      t.timestamps
    end
  end
end
