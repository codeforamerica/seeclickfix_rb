module SeeClickFix
  class Client
    module Comments
      
      def list_comments(issue, options={})
        get("api/issues/#{issue}/comments.json", options)
      end
      
    end
  end
end