require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Misoca < OmniAuth::Strategies::OAuth2
      option :client_options,
             site: 'https://app.misoca.jp',
             authorize_url: 'https://app.misoca.jp/oauth2/authorize',
             token_url: 'https://app.misoca.jp/oauth2/token'

      uid do
        raw_info['user_id'].to_s
      end

      info do
        {
          'email' => raw_info['email']
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('api/v1/me').parsed
      end

      # Overide callback_url to return the one w/o query string
      # See https://github.com/intridea/omniauth-oauth2/pull/82
      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'misoca', 'Misoca'
