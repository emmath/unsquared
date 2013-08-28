require 'spec_helper'
require 'support/vcr_setup'
require 'vcr'

describe "HashtagLookup" do
  before do
    Factory(:party, event_name: 'Hackathon')
    visit '/'
    click_link 'Hackathon'
  end

  it "show images given hashtag" do
    VCR.use_cassette('hashtag_lookup') do
      fill_in "Tag", with: "seattle"
      click_button "Create Socialview"
      page.should have_content("NOW ENTERING HASHTAG VISION")
    end
  end
end


