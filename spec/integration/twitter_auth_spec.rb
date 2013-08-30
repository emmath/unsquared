require 'spec_helper'

feature 'Sign in with Twitter' do

  before do
    OmniAuth.config.mock_auth[:twitter] = {
      provider:'twitter',
      uid: '1234567',
      credentials: {
        token: 'twitter token'
      }
    }
    end

  it "signing in with Twitter" do
    visit '/'
    #click_link 'Sign in with Facebook'
    page.should have_content("Sign in with Twitter")
  end
end
