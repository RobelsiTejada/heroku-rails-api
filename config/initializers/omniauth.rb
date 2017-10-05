# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :yahoo_auth, ENV['YAHOO_APP_ID'], ENV['YAHOO_APP_SECRET']
  { name: 'yahoo',
    # redirect_uri: 'https://robelsitejada.github.io/fsl',
    redirect_uri: 'http://website.dev/callbackurl/for/app',
    image_size: '96x96' }
end
