class AddDeviseToUser < ActiveRecord::Migration[5.1]
  change_table :users do |t|
    ## Database authenticatable
    t.string :encrypted_password, null: false, default: ''

    ## Rememberable
    t.datetime :remember_created_at
  end

  # add_index :users, :confirmation_token,   unique: true
  # add_index :users, :unlock_token,         unique: true
end
