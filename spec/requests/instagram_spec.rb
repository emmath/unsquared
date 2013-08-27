require 'spec_helper'

describe 'Instagram Integration', :vcr do
  before do
    visit '/'
    fill_in 'Hashtag', with: 'seattle'
    click_button 'Create Hashtag'
    page.should have_content('Hashtag Vision')
  end

  it 'displays tagged images from instagram' do
    instagram_links = all '#instagram .images a'
    instagram_links.should_not be_empty
    instagram_links.each do |link|
      link[:href].should match(%r{https://api.instagram.com/v1/tags})
    end
  end
end

