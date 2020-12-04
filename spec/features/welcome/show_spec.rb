require 'rails_helper'

RSpec.describe 'Site Navigation' do
  describe 'As a Visitor' do
    it "should see a navbar" do

    end

    it "should see a navbar with links to these pages: music, D&D, DJ, music blog, college movie, login, login with Google" do
      expect(page).to have_link("My Music")
      expect(page).to have_link("My D&D Game I Run")
      expect(page).to have_link("My Radio Show")
      expect(page).to have_link("My Old Music/Movie Blog")
      expect(page).to have_link("Login without Google Oath")
      expect(page).to have_link("Login with Google Oath")
    end


  end
end
