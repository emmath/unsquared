require 'spec_helper'

feature 'Creating Parties' do
  scenario "can create a party" do
    visit '/'
    click_link 'New Party'
    fill_in 'Name', :with => 'Demo Day'
    fill_in 'Notes', :with => 'Dress to impress'
    click_button 'Create Party'
    page.should have_content('Party has been created.')
  end
end
