# frozen_string_literal: true

class League < ApplicationRecord
  has_many :rosters
  has_many :players
  has_many :games
  belongs_to :users
end
