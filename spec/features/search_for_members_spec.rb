require 'rails_helper'

describe 'As a user' do
  describe 'I select Fire Nations and click search for members' do
    it 'I see the results on the page' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'
      expect(current_path).to eq(search_path)

      expect(page).to have_content('There are 20 members of the Fire Nation')
      within(first('.member')) do

        expect(page).to have_css('.name')
        name = find('.name').text
        expect(name).to_not be_empty

        expect(page).to have_css('.image')
        
        expect(page).to have_css('.allies')
        allies = find('.allies').text
        expect(allies).to_not be_empty

        expect(page).to have_css('.enemies')
        enemies = find('.enemies').text
        expect(enemies).to_not be_empty

        expect(page).to have_css('.affiliation')
        alliliation = find('.affiliation').text
        expect(alliliation).to_not be_empty
      end
    end
  end
end

# if they have or don't have allies what do we see?
# testing around an image and if it shows up