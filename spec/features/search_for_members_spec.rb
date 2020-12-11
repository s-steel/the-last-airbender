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
        breed = find('.name').text
        expect(breed).to_not be_empty

        expect(page).to have_css('.image')
        
        expect(page).to have_css('.allies')
        breed = find('.allies').text
        expect(breed).to_not be_empty

        expect(page).to have_css('.enemies')
        breed = find('.enemies').text
        expect(breed).to_not be_empty

        expect(page).to have_css('.affiliation')
        breed = find('.affiliation').text
        expect(breed).to_not be_empty
      end
    end
  end
end
