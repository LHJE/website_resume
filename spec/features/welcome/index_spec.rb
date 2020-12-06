require 'rails_helper'
include ActionView::Helpers::NumberHelper

RSpec.describe 'Welcome Page' do
  describe 'As a visitor' do
    before :each do
      visit root_path
    end

    it "can see welcome page text" do
      expect(page).to have_content("LUKE HUNTER JAMES-ERICKSON")
      expect(page).to have_content("oh, hello there")
    end
  end
end
