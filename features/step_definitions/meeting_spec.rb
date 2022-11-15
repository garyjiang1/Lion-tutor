When('I go to the home page') do
  visit root_path
end

Then('I should see the Tutor Profile tab') do
  expect(page).to have_content("Tutor Profile")
end

When('I click the Tutor Profile tab') do
  visit new_meeting_path
end

And("I should able to fill in Title") do
  fill_in('Title', with: 'xxx')
end

And("I should be able to fill in Description") do
  fill_in('Description', with: 'xxx')
end

And("I should be able to fill in Start Time") do
  fill_in "Start Time", with: "2022/11/16"
end

And("I should be able to fill in End Time") do
  fill_in "Start Time", with: "2022/11/16"
end


Then("I should see a list of available meetings") do
  expect(page).to have_content("Available Meetings")
end