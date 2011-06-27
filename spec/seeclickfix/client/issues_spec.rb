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
  
  describe ".issue_details" do
    before do
      stub_get("api/issues/1050.json").
        to_return(:status => 200, :body => fixture("issue_details_1050.json"))
    end

    it "should return the details for one issue" do
      test = @client.issue_details("1050")
      a_get("api/issues/1050.json").should have_been_made
      test.first.status.should == "Archived"
      test.first.issue_id.should == 1050
    end
  end
  
  describe ".create_issue" do
    before do
      stub_post("api/issues.json?issue[lat]=41.3103725899427&issue[lng]=-72.9241595114853&issue[summary]=foo").
        to_return(:status => 200, :body => fixture("create_issue.json"))
    end

    it "should create an issue" do
      test = @client.create_issue("foo", "41.3103725899427", "-72.9241595114853")
      a_post("api/issues.json?issue[lat]=41.3103725899427&issue[lng]=-72.9241595114853&issue[summary]=foo").should have_been_made
      test.first.status.should == "Open"
    end
  end
  

end