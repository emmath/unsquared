require 'spec_helper'

feature "Deleting parties" do
  scenario "Deleting a party" do
    Factory(:party, event_name: 'Hackathon')
    visit '/'
    click_link 'Hackathon'
    click_link "Delete Party"
    page.should have_content("Awww, Party has been deleted.")

    visit '/'
    page.should_not have_content("Hackathon")
  end
end
