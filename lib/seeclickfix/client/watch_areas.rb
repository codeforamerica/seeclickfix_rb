module SeeClickFix
  class Client
    module WatchAreas
      def watch_areas(options={})
        get("api/watchers/list.json", options)
      end
    end
  end
end