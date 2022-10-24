When('I go to the homepage') do
     visit new_tutor_path
end
  
Then('I should see the Become a tutor tab') do
    expect(page).to have_content("Become a Tutor")
    # pending # Write code here that turns the phrase above into concrete actions
end

Given('I am on Become a Tutor Page') do
    visit new_tutor_path
end

When('I press Create Tutor button') do
    click_button "Create Tutor"
end

When('I press Back to tutors button') do
    click_button "Back to tutors"
end

Then('I should see tutor created message') do
    expect(page).to have_content("Tutor was successfully created.")
end

Then('I should not see tutor list page') do
    expect(page).to_not have_content("Tutors List")
end

Then('I should see tutors list') do
    expect(page).to have_content("Tutors List")
end