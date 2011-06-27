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
  
  describe ".create_comment" do
    before do
      stub_post("api/issues/7000/comments.json?comment[comment]=hello&comment[email]=joe@myemail.com").
        to_return(:status => 200, :body => fixture("create_comment.json"))
    end

    it "should create a new comment on the issue" do
      test = @client.create_comment("7000", "hello", "joe@myemail.com")
      a_post("api/issues/7000/comments.json?comment[comment]=hello&comment[email]=joe@myemail.com").should have_been_made
      test.first.comment.should == "hello"
      test.first.id.should == 41623
    end
  end
  
end