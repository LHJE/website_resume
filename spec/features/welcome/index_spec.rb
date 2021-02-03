require 'rails_helper'
include ActionView::Helpers::NumberHelper

RSpec.describe 'Welcome Page' do
  describe 'As a visitor' do
    before :each do
      visit root_path
    end

    it "can see welcome page text" do
      expect(page).to have_content("Luke Hunter James-Erickson")
      expect(page).to have_content("Ruby on Rails | TDD | Conflict Management")
      expect(page).to have_link("Let's Chat")
      expect(page).to have_link("My Solar Garden")
      expect(page).to have_link("Eras")
      expect(page).to have_link("Sweater Weather")
    end
  end
end
