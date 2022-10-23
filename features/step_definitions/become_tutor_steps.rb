When('I go to the homepage') do
     visit new_tutor_path
end
  
Then('I should see the Become a tutor tab') do
    expect(page).to have_content("Become a Tutor")
    # pending # Write code here that turns the phrase above into concrete actions
end