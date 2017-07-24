class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.references :city, foreign_key: true
      t.string :name, null: true, lenght: 255
      t.string :address
      t.string :building, null: true, lenght: 7
      t.string :local, null: true, lenght: 7

      t.timestamps
    end

    add_index :places, [:city, :name]
  end
end
