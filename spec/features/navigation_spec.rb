require 'rails_helper'

RSpec.describe 'Site Navigation' do
  describe 'As a Visitor' do
    describe 'I see a nav bar where I can link to' do
      it 'the welcome page' do
        visit music_path

        within 'nav' do
          click_link 'Home'
        end

        expect(current_path).to eq(root_path)
      end

      it 'my music' do
        visit root_path

        within 'nav' do
          click_link 'My Music'
        end

        expect(current_path).to eq(music_path)
      end

      it 'my radio show' do
        visit root_path

        within 'nav' do
          click_link 'My Radio Show'
        end

        expect(current_path).to eq('/radio')
      end
    end
  end
end
