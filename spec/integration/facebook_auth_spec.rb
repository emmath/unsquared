require 'spec_helper'

feature 'Sign in with Facebook' do

  before do
    OmniAuth.config.mock_auth[:facebook] = {
      provider:'facebook',
      uid: '1234567',
      credentials: {
        token: 'facebook token'
      }
    }
    end

  it "signing in with Facebook" do
    visit '/'
    #click_link 'Sign in with Facebook'
    page.should have_content("Sign in with Facebook")
  end
end
