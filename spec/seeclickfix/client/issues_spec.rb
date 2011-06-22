# -*- encoding: utf-8 -*-
require 'helper'

describe SeeClickFix::Client::Issues do

  before do
    @client = SeeClickFix::Client.new
  end

  describe ".list_issues" do

     it "should return issues" do
       stub_get("http://seeclickfix.com/api/issues.json?at=San+Francisco").
         to_return(:body => fixture("issues_sf.json"))
       test = @client.list_issues("San Francisco")
       test.first.status.should == "Open"
     end

   end


end