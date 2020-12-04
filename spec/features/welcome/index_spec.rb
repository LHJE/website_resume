require 'rails_helper'
include ActionView::Helpers::NumberHelper

RSpec.describe 'Welcome Page' do
  describe 'As a visitor' do
    before :each do
      visit root_path
    end

    it "can see welcome message" do
      expect(page).to have_content("Hi there, my name is Luke, and I'm having a great day")
    end
  end
end
