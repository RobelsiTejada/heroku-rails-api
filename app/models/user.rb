# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  devise :omniauthable, omniauth_providers: [:yahoo_auth]
  has_many :rosters
  has_many :games
  has_many :leagues

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    unless user
      user = User.create(name: data['nickname'], email: data['email'], password: Devise.friendly_token[0, 20])
    end
    user
  end
end
