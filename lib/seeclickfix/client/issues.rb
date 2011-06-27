module SeeClickFix
  class Client
    module Issues
      
      # Returns a list of issues for the location Data is returned in chunks of num_results. You can increment the page parameter to get the next group of results. If page exceeds the total number of pages the result will be an empty array
      #
      # @param location [String] Geocodable street address. e.g. zipcode, city, state or 123 state st. new haven, ct.
      # @option options zoom [String] Integer level from 0 to 19 based on google maps.
      # @param options [Hash] A customizable set of options.
      # @option options lat [String] Lattitude
      # @option options lon [String] Longitude
      # @option options lat_min [String] Minimum lattitude
      # @option options lon_min [String] Minimum longitude
      # @option options lat_max [String] Maximum lattitude
      # @option options lon_max [String] Maximum longitude
      # @option options status [String] Open Set equal to "true" to see open issues. If status is not set the API returns Open, Closed, and Acknowledged issues.
      # @option options status [String] Closed Set equal to "true" to see closed issues. If status is not set the API returns Open, Closed, and Acknowledged issues.
      # @option options status [String] Acknowledged Set equal to "true" to see acknowledged issues. If status is not set the API returns Open, Closed, and Acknowledged issues.
      # @option options status [String] Archived Set equal to "true" to see archived issues. If status is not set the API returns Open, Closed, and Acknowledged issues.
      # @option options start [String] The number of hours ago the oldest issue can be. Partial hours can be in decimal format, for example 0.25 shows reports in the last 15min.
      # @option options end [String] The number of hours ago the youngest issue can be.
      # @option options num_results [Integer] The maximum number of results to return (default 10, maximum 1000).
      # @option options page [Integer] If the number of results exceeds num_results, page can increment the range.
      # @option options search [String] A query string to limit the results by.
      # @option options sort [String] A parameter to sort the results by. Possible values include: issues.updated_at - Date last updated
      # @option options Issues.created_at [String] Date Created
      # @option options Issues.rating [String] Issue Rating
      # @option options Issues.hot [String]  Issue Hotness
      # @option options direction [String] Sort direction. Possible values include: ASC - Ascending
      # @option options DESC [String] Descending.
      # @option options request_tags [String] Limit results to issues with service request tags. Service request tags are automatically added to issues when issues are reported to a specific service request. Multiple request tags can be found using the form "request_type_[request_type_id],request_type_[request_type_id],request_type_[request_type_id]". 
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/listing-issues
      # @example
      #   SeeClickFix.list_issues("San Francisco")
      def list_issues(location, options={})
        get("api/issues.json?at=#{location}", options)
      end
      
      # Use this query to get details on a single issue. There may be more information in this query than the issue listing query.
      #
      # @param issue [String] The issue number for the query
      # @param options [Hash] A customizable set of options.
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/querying-an-issue
      # @example
      #   SeeClickFix.issue_details("1050")
      def issue_details(issue, options={})
        get("api/issues/#{issue}.json", options)
      end
      
      # Use this query to get details on a single issue. There may be more information in this query than the issue listing query.
      #
      # @param summary [String] Summary of the problem
      # @param lat [String] Latitude of the issue.
      # @param lng [String] Longitude of the issue.
      # @param api_key [String] Api key
      # @param options [Hash] A customizable set of options.
      # @option options issue[description] [String] Longer text describing the problem.
      # @option options issue[address] [String] Text representation of the location of the issue.
      # @option options issue[reporter_email] [String] Email of the person reporting the issue.
      # @option options issue[reporter_display] [String] Text display of the person reporting the issue.
      # @option options issue[issue_image_attributes][uploaded_data] [String] Attach an image to the issue. Form data must be sent as "multipart/form-data".
      # @option options issue[request_type_id] [String] If submitting to a service request, specify the service request ID here. By adding this attribute, additional validations are required, including: 1. Making sure the service request can be within the given boundaries. 2. Making sure all of the required additional questions are completed.
      # For each service request question provide the following parameters.
      # @option options issue[request_type_answers_attributes][][request_type_question_primary_key] [String] Primary key of the service request question.
      # @option options issue[request_type_answers_attributes][][answer] [String] Answer to the service request question.
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/creating-an-issue
      # @example
      #   SeeClickFix.issue_details("1050")
      #
      # @return [Array<Hashie::Mash>] 
      # @see http://help.seeclickfix.com/kb/api/querying-an-issue
      # @example
      #   SeeClickFix.create_details("foo","41.3103725899427", "-72.9241595114853") http://seeclickfix.com/api/issues.xml
      def create_issue(summary, lat, lng, options={})
        post("api/issues.json?issue[summary]=#{summary}&issue[lat]=#{lat}&issue[lng]=#{lng}")
      end
      
      
      
    end
  end
end