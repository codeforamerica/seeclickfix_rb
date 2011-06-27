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
      
      # Add a comment to an issue
      #
      # @param issue [String] The issue number for the query
      # @param api_key [String] API Key
      # @param comment [String] Comment to add
      # @param comment_email [String] Email of the person making the comment
      # @param options [Hash] A customizable set of options.
      # @options options comment[name]  Name of the person making the comment.
      # @options options comment[send_email] Subscribe the email added to all comments.
      # @options options comment[youtube_url] URL of a youtube video to add.
      # @options options comment[comment_image_attributes][uploaded_data] Image to add to the comment.
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/adding-a-comment
      # @example
      #   SeeClickFix.create_comment("7000", "hello", "joe@myemail.com")
      def create_comment(issue, comment, comment_email, options={})
        post("api/issues/#{issue}/comments.json?comment[comment]=#{comment}&comment[email]=#{comment_email}", options)
      end
      
    end
  end
end