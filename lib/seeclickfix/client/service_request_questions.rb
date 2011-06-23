module SeeClickFix
  class Client
    module ServiceRequestQuestions
      
      # Given a service request ID (chosen from the list of valid service request types), list the additional questions that need to be asked.
      #
      # @param request_type_id [String] Service request ID. A valid service request type ID 
      # @option api_key [String] API Key
      # @param options [Hash] A customizable set of options.
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/list-service-request-type-questions
      # @example
      #   SeeClickFix.service_request_types("1")
      def service_request_type_questions(request_type_id,options={})
        get("api/request_types/#{request_type}/request_type_questions.json", options)
      end
    end
  end
end