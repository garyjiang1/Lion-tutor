require 'rails_helper'

RSpec.feature "Tutors", type: :feature do
  context 'create new tutor' do
    scenario 'should be successfull' do
      visit new_tutor_path
      within('form') do
        fill_in 'First Name', with: 'md monirul'
        fill_in 'Last Name', with: 'Islam'
        fill_in 'Email', with: 'test12@gmail.com'
        fill_in 'Phone Number', with: '1234'
        fill_in 'Tell us about yourself', with: 'bio'
      end
      click_button 'Create Tutor'
      expect(page).to have_content('Tutor was successfully created.')
    end

    scenario 'should fail' do
      visit new_tutor_path
      within('form') do
        fill_in 'First Name', with: 'md monirul'
        fill_in 'Last Name', with: 'Islam'
        fill_in 'Email', with: 'test12@gmail.com'
        fill_in 'Phone Number', with: '1234'
      end
      click_button 'Create Tutor'
      expect(page).to have_content('error prohibited this tutor from being saved')
    end
  end

  context 'update tutor' do
    scenario 'should be successfull' do
      tutor = Tutor.create(first_name:'first', last_name:'last', email:'test@gmail.com', phone:'1234', bio:'bio')
      visit edit_tutor_path(tutor)
      within('form') do
        fill_in 'First Name', with: 'md monirul'
        fill_in 'Last Name', with: 'Islam'
      end
      click_button 'Update Tutor'
      expect(page).to have_content('Tutor was successfully updated.')
    end

    scenario 'should fail' do
      tutor = Tutor.create(first_name:'first', last_name:'last', email:'test@gmail.com', phone:'1234', bio:'bio')
      visit edit_tutor_path(tutor)
      within('form') do
        fill_in 'First Name', with: ''
        fill_in 'Last Name', with: ''
      end
      click_button 'Update Tutor'
      expect(page).to have_content('First name can\'t be blank')
      expect(page).to have_content('Last name can\'t be blank')
    end
  end

  context 'destroy tutor' do
    scenario 'should be successfull' do
      tutor = Tutor.create(first_name:'md monirul', last_name:'last', email:'test@gmail.com', phone:'1234', bio:'bio', user_id: 1)
      visit tutors_path
      expect(page).to have_content('md monirul')
      click_on 'Delete', match: :first
    end

  end

end