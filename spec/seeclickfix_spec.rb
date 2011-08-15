require 'helper'

describe SeeClickFix do
  describe ".respond_to?" do
    it "should be true if method exists" do
      SeeClickFix.respond_to?(:client, true).should be_true
    end
  end

  describe ".client" do
    it "should be a SeeClickFix::Client" do
      SeeClickFix.client.should be_a SeeClickFix::Client
    end
  end
end
