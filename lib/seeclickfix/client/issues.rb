module SeeClickFix
  class Client
    module Issues
      
      def list_issues(options={})
             get("api/issues.json", options)
      end
      
    end
  end
end