module SeeClickFix
  class Client
    module ServiceRequestTypes
      
      # Use this query to list valid service request types (things like pothole, graffiti, street light out etc.) for a given location.
      #
      # @param lat [String] Latitude to check for service request types.
      # @param long [String] Longitude to check for service request types.
      # @option api_key [String] API Key
      # @param options [Hash] A customizable set of options.
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/list-service-request-types
      # @example
      #   SeeClickFix.service_request_types("32.1610815588945","-110.87677001953125")
      def service_request_types(lat,lng,options={})
        get("api/request_types/at.json?lat=#{lat}&lng=#{lng}", options)
      end
      
    end
  end
end