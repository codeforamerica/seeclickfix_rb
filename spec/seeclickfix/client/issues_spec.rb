# -*- encoding: utf-8 -*-
require 'helper'

describe SeeClickFix::Client::Issues do

  before do
    @client = SeeClickFix::Client.new
  end

  describe ".list_issues" do
    before do
      stub_get("api/issues.json?at=San+Francisco").
        to_return(:status => 200, :body => fixture("issues_sf.json"))
    end

    it "should return a list of issues" do
      test = @client.list_issues("San Francisco")
      a_get("api/issues.json?at=San+Francisco").should have_been_made
      test.first.issue_id.should == 108657
    end
  end

end