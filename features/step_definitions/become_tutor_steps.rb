When('I go to the homepage') do
     visit root_path
end
  
Then('I should see the Become a tutor tab') do
    expect(page).to have_content("Become a Tutor")
end

Given('I am on Become a Tutor Page') do
    visit new_tutor_path
end

And("I fill out the tutor information") do
    fill_in('First Name', with: 'MD Monirul')
    fill_in('Last Name', with: 'Islam')
    fill_in('Email', with: 'im2594@columbia.edu')
    fill_in('Phone Number', with: '1234')
    fill_in('Tell us about yourself', with: 'Bio')
    click_on('Create Tutor')
end

Then('I should see tutor created message') do
    expect(page).to have_content("Tutor was successfully created.")
end

When('I press Back to tutors button') do
    click_button "Back to tutors"
end


Then('I should not see tutor list page') do
    expect(page).to_not have_content("Tutors List")
end

Then('I should see tutors list') do
    expect(page).to have_content("Tutors List")
end