# frozen_string_literal: true

class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name, null: false
      t.text :user1, null: false
      t.integer :userIDs, null: false
      t.numeric :leagueStats, null: false
      t.integer :sportID, null: false
      t.references :schedule, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
