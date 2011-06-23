# -*- encoding: utf-8 -*-
require 'helper'

describe SeeClickFix::Client::Comments do

  before do
    @client = SeeClickFix::Client.new
  end

  describe ".list_comments" do
    before do
      stub_get("api/issues/14074/comments.json").
        to_return(:status => 200, :body => fixture("comments.json"))
    end

    it "should return all comments for the given issue" do
      test = @client.list_comments("14074")
      a_get("api/issues/14074/comments.json").should have_been_made
      test.first.name.should == "Bruce Alexander"
      test.first.issue_id.should == 14074
    end
  end
  
end