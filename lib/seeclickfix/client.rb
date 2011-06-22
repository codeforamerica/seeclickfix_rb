module SeeClickFix
  class Client
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options={})
      options = SeeClickFix.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

  end
end