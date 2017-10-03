# frozen_string_literal: true

class Player < ApplicationRecord
  include Authentication
  has_many :leagues
  belongs_to :rosters
  has_many :games
  belongs_to :users
end
