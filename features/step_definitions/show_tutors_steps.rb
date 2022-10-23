When('I click Tutors') do
    visit tutors_path
end

When('I press Add Another Tutor button') do
    visit new_tutor_path
end

Then('I should see the list of tutors') do
    expect(page).to have_content "Tutors List"
    expect(page).to have_content "Name"
    expect(page).to have_content "Email"    
    expect(page).to have_content "Phone"
    expect(page).to have_content "Bio"
end 

Then ('I should not see Tutor was successfully created message') do
    expect(page).should_not have_content "Tutor was successfully created"
end

Then('I should see new tutor page with an option to create tutor') do
    expect(page).to have_button "Create Tutor"
end