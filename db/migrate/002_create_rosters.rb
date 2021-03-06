# frozen_string_literal: true

class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :userRoster, null: false
      t.integer :sportID, null: false
      t.references :league, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
