require 'rails_helper'

RSpec.describe 'User Registration' do
  describe 'As a Visitor' do
    it 'I see a link to register as a user' do
      visit root_path

      click_link 'Register'

      expect(current_path).to eq(registration_path)
      expect(page).to have_content("Why should you register? Why, to experience registering! Also, to see today's image :)")
    end

    it 'I can register as a user' do
      visit registration_path

      fill_in 'Name', with: 'Morgan'
      fill_in 'Email', with: 'morgan@example.com'
      fill_in 'Password', with: 'securepassword'
      fill_in 'Password confirmation', with: 'securepassword'
      click_button 'Register'

      expect(current_path).to eq(profile_path)
      expect(page).to have_content('Welcome, Morgan!')
    end

    describe 'I can not register as a user if' do
      it 'I do not complete the registration form' do
        visit registration_path

        fill_in 'Name', with: 'Morgan'
        click_button 'Register'

        expect(page).to have_button('Register')
        expect(page).to have_content("email: [\"can't be blank\"]")
        expect(page).to have_content("password: [\"can't be blank\"]")
      end

      it 'I use a non-unique email' do
        user = User.create(name: 'Morgan', email: 'morgan@example.com', password: 'securepassword')

        visit registration_path

        fill_in 'Name', with: user.name
        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password
        fill_in 'Password confirmation', with: user.password
        click_button 'Register'

        expect(page).to have_button('Register')
        expect(page).to have_content("email: [\"has already been taken\"]")
      end
    end
  end
end
