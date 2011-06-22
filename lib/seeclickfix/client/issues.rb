module SeeClickFix
  class Client
    module Issues
      
      def list_issues(location, options={})
             get("api/issues.json?at=#{location}", options)
      end
      
    end
  end
end