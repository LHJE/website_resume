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

      it 'my dnd game' do
        visit root_path

        within 'nav' do
          click_link 'A D&D Game I DM'
        end

        expect(current_path).to eq('/dnd')
      end

      it 'the old blog' do
        visit root_path

        within 'nav' do
          click_link 'My Old Blog'
        end

        expect(current_path).to eq('http://www.somelovemusic.net/')
      end

      it 'the login page' do
        visit login_path

        within 'nav' do
          click_link 'Log In'
        end

        expect(current_path).to eq(login_path)
      end

      it 'the registraton page' do
        visit root_path

        within 'nav' do
          click_link 'Register'
        end

        expect(current_path).to eq(registration_path)
      end
    end
  end

  describe 'As a User' do
    before :each do
      @user = User.create(name: 'Morgan', email: 'morgan@example.com', password: 'securepassword')
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    end

    it 'I see who I am logged in as' do
      visit root_path

      within 'nav' do
        expect(page).to have_content("Logged in as #{@user.name}")
      end
    end

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

      it 'my dnd game' do
        visit root_path

        within 'nav' do
          click_link 'A D&D Game I DM'
        end

        expect(current_path).to eq('/dnd')
      end

      it 'the old blog' do
        visit root_path

        within 'nav' do
          click_link 'My Old Blog'
        end

        expect(current_path).to eq('http://www.somelovemusic.net/')
      end
    end
  end
end
