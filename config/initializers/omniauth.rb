# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :yahoo_auth, ENV['YAHOO_APP_ID'], ENV['YAHOO_APP_SECRET']
  { name: 'yahoo',
    redirect_uri: 'https://mysterious-beyond-27378.herokuapp.com/for/app',
    image_size: '96x96' }
end
