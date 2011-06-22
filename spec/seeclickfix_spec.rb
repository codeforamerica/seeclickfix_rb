require 'helper'

describe SeeClickFix do
  describe ".client" do
    it "should be a SeeClickFix::Client" do
      SeeClickFix.client.should be_a SeeClickFix::Client
    end
  end
end