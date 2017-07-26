class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true

      t.string :name

      t.integer :attenders_limit, default: 0
      t.integer :current_attenders, default: 0

      t.integer :ticket_price, default: 0

      t.boolean :free, default: true

      t.datetime :date

      t.timestamps
    end
  end
end
