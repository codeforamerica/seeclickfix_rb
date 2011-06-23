# -*- encoding: utf-8 -*-
require 'helper'

describe SeeClickFix::Client::ServiceRequestQuestions do

  before do
    @client = SeeClickFix::Client.new(:api_key => "abc123")
  end
  
  describe "service_request_type_questions" do
    before do
      stub_get("api/request_types/1/request_type_questions.json").
        to_return(:status => 200, :body => fixture("request_type_questions.json"))  
    end

    it "should return all questions for the service request type" do
      test = @client.service_request_type_questions("1")
      a_get("api/request_types/1/request_type_questions.json").should have_been_made
      test.first.question.should == "Your email address?"
    end
  end


end