require 'spec_helper'

describe OmniAuth::Strategies::Quizlet do

  subject do
    OmniAuth::Strategies::Quizlet.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  context "client options" do
    it "should have correct site" do
      subject.options.client_options.site.should eq("https://api.quizlet.com")
    end

    it "should have correct authorize url" do
      subject.options.client_options.authorize_url.should eq('https://quizlet.com/authorize/')
    end

    it "should have correct token url" do
      subject.options.client_options.token_url.should eq('https://api.quizlet.com/oauth/token')
    end
  end

end
