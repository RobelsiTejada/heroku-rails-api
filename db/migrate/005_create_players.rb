# frozen_string_literal: true
class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.text :text, null: false
      t.references :league, foreign_key: true, null: false
      t.references :game, index: true, foreign_key: true, null: false
      t.references :roster, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
