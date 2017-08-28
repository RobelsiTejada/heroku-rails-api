# frozen_string_literal: true

class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.text :text, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
