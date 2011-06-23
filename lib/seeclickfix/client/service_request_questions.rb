module SeeClickFix
  class Client
    module ServiceRequestQuestions
      def service_request_type_questions(request_type,options={})
        get("api/request_types/#{request_type}/request_type_questions.json", options)
      end
    end
  end
end