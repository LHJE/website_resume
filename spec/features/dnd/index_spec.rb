require 'rails_helper'
include ActionView::Helpers::NumberHelper

RSpec.describe 'Dnd Page' do
  describe 'As a visitor' do
    before :each do
      visit '/dnd'
    end

    it "can see..." do

    end
  end
end
