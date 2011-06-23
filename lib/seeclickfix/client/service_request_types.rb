module SeeClickFix
  class Client
    module ServiceRequestTypes
      
      def service_request_types(lat,lng,options={})
        get("api/request_types/at.json?lat=#{lat}&lng=#{lng}", options)
      end
      
    end
  end
end