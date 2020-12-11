require 'rails_helper'

describe 'As a user' do
  describe 'I select Fire Nations and click search for members' do
    it 'I see the results on the page' do 
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'
      expect(current_path).to eq(search_path)

      expect(page).to have_content('There are 5 members of the Fire Nation')
      # Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
      # And I should see a list with the detailed information for all 97 members of the Fire Nation.
      within(first('.member')) do

        expect(page).to have_css('.name')
        # breed = find('.name').text
        # expect(breed).to_not be_empty

        expect(page).to have_css('.image')
        
        expect(page).to have_css('.allies')
        # breed = find('.allies').text
        # expect(breed).to_not be_empty

        expect(page).to have_css('.enemies')
        # breed = find('.enemies').text
        # expect(breed).to_not be_empty

        expect(page).to have_css('.affiliation')
        # breed = find('.affiliation').text
        # expect(breed).to_not be_empty
      end
    end
  end
end
