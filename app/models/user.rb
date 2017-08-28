# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :rosters
  has_many :games
  has_many :leagues
end
