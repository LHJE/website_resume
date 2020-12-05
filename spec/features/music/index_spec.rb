require 'rails_helper'
include ActionView::Helpers::NumberHelper

RSpec.describe 'Music Page' do
  describe 'As a visitor' do
    before :each do
      visit music_path
    end

    it "can see..." do

    end
  end
end
