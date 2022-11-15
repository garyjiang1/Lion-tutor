Given /the following tutors exist/ do |tutors_table|
    tutors_table.hashes.each do |tutor|
      # each returned element will be a hash whose key is the table header.
      # you should arrange to add that movie to the database here.
      Tutor.create(tutor)
    end
end


And('I am on the Tutors tab page') do 
    visit tutors_path
end

Then /(.*) seed tutors should exist/ do | n_seeds |
    expect(Tutor.count).to eq n_seeds.to_i
end

When('I click Tutors') do
    visit tutors_path
end

When('I press Add Another Tutor button') do
    visit new_tutor_path
end

Then('I should see the list of tutors info columns') do
    expect(page).to have_content "Tutors List"
    expect(page).to have_content "Name"
    expect(page).to have_content "Email"    
    expect(page).to have_content "Phone"
    expect(page).to have_content "Bio"
end 

And ('I should not see Tutor was successfully created message') do
    expect(page).should_not have_content "Tutor was successfully created"
end

Then /I should see all the tutors/ do
    # Make sure that all the movies in the app are visible in the table
    expect(page).to have_xpath("//tr", count: 4)
end

Then('I should see new tutor page with an option to create tutor') do
    expect(page).to have_button 'Create Tutor'
end