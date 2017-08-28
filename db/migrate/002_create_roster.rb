# frozen_string_literal: true

class CreateRoster < ActiveRecord::Migration
  def change
    create_table :roster do |t|
      t.string :userRoster, index: true, null: false
      t.integer :sportID, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
