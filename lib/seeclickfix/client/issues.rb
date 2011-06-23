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
      # @example
      #   SeeClickFix.list_issues("San Francisco")
      def list_issues(location, options={})
             get("api/issues.json?at=#{location}", options)
      end
      
      def issue_details(issue, options={})
             get("api/issues/#{issue}.json", options)
      end
      
      
    end
  end
end