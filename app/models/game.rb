# frozen_string_literal: true

class Game < ApplicationRecord
  include Authentication
  has_many :rosters
  belongs_to :leagues
  has_many :players
  belongs_to :users
end
