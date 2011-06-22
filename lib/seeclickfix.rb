require 'seeclickfix/configuration'
require 'seeclickfix/client'

module SeeClickFix
  extend Configuration

  # Alias for SeeClickFix::Client.new
  #
  # @return [SeeClickFix::Client]
  def self.client(options={})
    SeeClickFix::Client.new(options)
  end

  # Delegate to SeeClickFix::Client.new
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private=false)
    client.respond_to?(method, include_private) || super(method, include_private)
  end
end