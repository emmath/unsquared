require 'spec_helper'

feature 'Creating Parties' do
  before do
    visit '/'
    click_link 'New Party'
  end

  scenario "can create a party" do
    fill_in 'Name', :with => 'Demo Day'
    fill_in 'Notes', :with => 'Dress to impress'
    click_button 'Create Party'
    page.should have_content('Party has been created.')
  end

  scenario "can not create a party without a name" do
    click_button 'Create Party'
    page.should have_content("Party has not been created")
    page.should have_content("Name can't be blank")
  end
end
