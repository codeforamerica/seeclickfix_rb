require 'faraday_middleware'

module SeeClickFix
  class Client
    # @private
    module Connection
      private

      def connection
            Faraday.new(:url => 'http://seeclickfix.com/') do |connection|
              connection.use Faraday::Request::UrlEncoded
              connection.use Faraday::Response::RaiseError
              connection.use Faraday::Response::Mashify
              connection.use Faraday::Response::ParseJson
              connection.adapter(Faraday.default_adapter)
            end
      end
    end
  end
end
