# frozen_string_literal: true

class Roster < ApplicationRecord
  include Authentication
  belongs_to :games
  has_many :leagues
  has_many :players
  belongs_to :users
end
