When('I go to the become a tutor tab') do
     visit new_tutor_path
end
  
Then('I should see the Become a tutor page contents') do
    expect(page).to have_content("Become a Tutor")
end