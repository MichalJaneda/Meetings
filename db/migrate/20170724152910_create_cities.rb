class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.references :country, foreign_key: true
    end
    add_index :cities, [:name, :country_id], unique: true
  end
end
