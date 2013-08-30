# require 'spec_helper'

# feature "Editing Parties" do
#   before do
#     Factory(:party, event_name: "Hackathon")
#     visit '/'
#     click_link "Hackathon"
#     click_link "Edit Party"
#   end

#   scenario "Updating a party" do
#     fill_in "Notes", with: "Bring chips"
#     click_button "Update Party"
#     page.should have_content("Congrats! Your party has been updated.")
#   end

#   scenario "Updating a party with invalid attributes is wrong" do
#     fill_in "Name", with: " "
#     click_button "Update Party"
#     page.should have_content("Whoops, party has not been updated.")
#   end
# end
