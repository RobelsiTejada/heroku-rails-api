# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password, null: false
      t.string :password_confirmation, null: false

      t.timestamps null: false
    end
  end
end
