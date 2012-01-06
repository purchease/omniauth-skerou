module OmniAuth
  module Strategies
    class Skerou < OmniAuth::Strategies::OAuth2
      option :name, 'skerou'

      option :client_options, {
        site: 'http://staging.skerou.com',
        authorize_url: 'http://staging.skerou.com/oauth2/authorize',
        token_url: 'http://staging.skerou.com/oauth2/token'
      }
    end
  end
end
