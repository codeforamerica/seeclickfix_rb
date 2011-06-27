module SeeClickFix
  class Client
    module Comments
      
      # Use this query the comments and history of a single issue.
      #
      # @param issue [String] The issue number for the query
      # @param options [Hash] A customizable set of options.
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/listing-comments-and-issue-history
      # @example
      #   SeeClickFix.list_comments("1050")
      def list_comments(issue, options={})
        get("api/issues/#{issue}/comments.json", options)
      end
      
      def create_comment(issue_id, comment, comment_email, options={})
        post("api/issues/#{issue_id}/comments.json?comment[comment]=#{comment}&comment[email]=#{comment_email}", options)
      end
      
    end
  end
end