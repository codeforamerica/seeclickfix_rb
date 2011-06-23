# -*- encoding: utf-8 -*-
require 'helper'

describe SeeClickFix::Client::WatchAreas do

  before do
    @client = SeeClickFix::Client.new
  end

  describe ".watch_areas" do
    before do
      stub_get("api/watchers/list.json?at=San+Francisco").
        to_return(:status => 200, :body => fixture("watchers.json"))
    end

    it "should return all the watch areas for the area" do
      test = @client.watch_areas({:at => "San Francisco"})
      a_get("api/watchers/list.json?at=San+Francisco").should have_been_made
      test.first.title.should == "21 Y Peralta Hacienda Neighborhood"
      test.first.id.should == 936
    end
  end
end