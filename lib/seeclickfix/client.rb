require 'seeclickfix/connection'

require 'seeclickfix/client/comments'
require 'seeclickfix/client/issues'
require 'seeclickfix/client/service_request_questions'
require 'seeclickfix/client/service_request_types'
require 'seeclickfix/client/watch_areas'

module SeeClickFix
  class Client
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options={})
      options = SeeClickFix.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end
    
    include SeeClickFix::Connection
    
    include SeeClickFix::Client::Comments
    include SeeClickFix::Client::Issues
    include SeeClickFix::Client::ServiceRequestQuestions
    include SeeClickFix::Client::ServiceRequestTypes
    include SeeClickFix::Client::WatchAreas

  end
end