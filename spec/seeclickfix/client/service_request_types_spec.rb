# -*- encoding: utf-8 -*-
require 'helper'

describe SeeClickFix::Client::ServiceRequestTypes do

  before do
    @client = SeeClickFix::Client.new({:api_key => "abc123"})
  end

  describe "service_request_types" do
    before do
      stub_get("api/request_types/at.json?lat=32.1610815588945&lng=-110.87677001953125").
        to_return(:status => 200, :body => fixture("request_types.json"))
    end

    it "should return all comments for the given issue" do
      test = @client.service_request_types("32.1610815588945","-110.87677001953125")
      a_get("api/request_types/at.json?lat=32.1610815588945&lng=-110.87677001953125").should have_been_made
      test.first.title.should == "Pothole"
      #test.first.plus_watch_area_title.should == "City of Tuscon"
    end
  end

end
