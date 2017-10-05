# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  devise :omniauthable, omniauth_providers: [:yahoo_auth]
  has_many :rosters
  has_many :games
  has_many :leagues
end
