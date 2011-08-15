module SeeClickFix
  class Client
    module WatchAreas

      # Use this query to list public watch areas at a given location.
      #
      # @param options [Hash] A customizable set of options.
      # @option options at [String] Geocodable street address. e.g. zipcode, city, state or 123 state st. new haven, ct.
      # @option options zoom [String] Integer level from 0 to 19 based on google maps.
      # @option options lat [String] Lattitude
      # @option options lon [String] Longitude
      # @option options lon [String] Longitude
      # @option options radius [String] Radius to search for watch areas by. Radius is in units of degrees. Default is 1.
      # @option options watcher_search [String] Search terms to limit the results by.
      # @option options page [String] Page to display the results as. Results are sorted by distance from the required parameter area's center. Default is 1.
      # @option options num_results [Integer] Number of results to return. Default is 20
      # @return [Array<Hashie::Mash>]
      # @see http://help.seeclickfix.com/kb/api/list-watch-areas
      # @example
      #   SeeClickFix.watch_areas({:at => "San Francisco"})
      def watch_areas(options={})
        get("api/watchers/list.json", options)
      end
    end
  end
end
