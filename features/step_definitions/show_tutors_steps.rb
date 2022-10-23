When('I click Tutors') do
    visit tutors_path
end

Then('I should see the list of tutors') do
    expect(page).to have_content "Tutors List"
    expect(page).to have_content "Name"
    expect(page).to have_content "Email"    
    expect(page).to have_content "Phone"
    expect(page).to have_content "Bio"
end 

Then ('I should see option to add another tutor') do
    expect(page).to have_button "Add Another Tutor"
end

Then ('I should not see Tutor was successfully created message') do
    expect(page).should_not have_content "Tutor was successfully created"
end