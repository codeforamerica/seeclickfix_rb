unless ENV['CI']
  require 'simplecov'
  SimpleCov.start
end
require 'seeclickfix'
require 'rspec'
require 'webmock/rspec'

def a_delete(url)
  a_request(:delete, seeclickfix_url(url))
end

def a_get(url)
  a_request(:get, seeclickfix_url(url))
end

def a_post(url)
  a_request(:post, seeclickfix_url(url))
end

def a_put(url)
  a_request(:put, seeclickfix_url(url))
end

def stub_delete(url)
  stub_request(:delete, seeclickfix_url(url))
end

def stub_get(url)
  stub_request(:get, seeclickfix_url(url))
end

def stub_post(url)
  stub_request(:post, seeclickfix_url(url))
end

def stub_put(url)
  stub_request(:put, seeclickfix_url(url))
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def seeclickfix_url(url)
  "https://seeclickfix.com/#{url}"
end
