require 'spec_helper'

feature "Viewing parties" do
  scenario "Listing all parties" do
    party = Factory.create(:party, event_name: "Hackathon")
    visit '/'
    click_link 'Hackathon'
    page.current_url.should == party_url(party)
  end
end
