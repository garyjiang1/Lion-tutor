Given /the following meetings exist/ do |meetings_table|
  meetings_table.hashes.each do |meeting|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Meeting.create(meeting)
  end
end

And('I am on the Tutor Profile tab page') do 
  visit new_meeting_path
end

Then /(.*) seed meetings should exist/ do | n_seeds |
  expect(Meeting.count).to eq n_seeds.to_i
end

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
  fill_in "End Time", with: "2022/11/16"
end

Then("I should be able to click Create Meeting button") do
  click_button "Create Meeting"
end

Then("I should be able to click Meeting Changes") do
  click_link_or_button("Meeting Changes")
end

Then("I should be able to click Delete this meeting") do
  click_button "Delete this meeting"
end

Then("I should be able to click Back to profile") do
  expect(page).to have_content("Back to profile")
  visit new_meeting_path
end


Then("I should see a list of available meetings") do
  expect(page).to have_content("Available Meetings")
end

Then("I should see available meeting information") do
  expect(page).to have_content("xxx") 
end

Then("I should see all available meeting information") do
  expect(page).to have_content("xxx") 
  expect(page).to have_content("meeting 1") 
end

Then("I should not see all available meeting information") do
  expect(page).to_not have_content("xxx") 
  expect(page).to_not have_content("meeting 1") 
end