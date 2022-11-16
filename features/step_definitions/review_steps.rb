When('I am on the home page') do
    visit root_path
  end
  
Then('I should see the Tutor tab') do
    expect(page).to have_content("Tutors")
end

When('I click on the tutor') do
    visit @tutor
end

Then('I should see a Write a Review button') do
    expect(page).to have_content "Write a Review"
end

When('I click new review') do
    click_on('Write a Review')
end

And ("I fill out the review rating") do
    fill_in('Rating', with: '5')
end

And ("I fill out the review comment") do
    fill_in('Comment', with: 'Faiza is an awesome tutor')
    click_on('Create Review')
end

Then('I should see review created message') do
   expect(page).to have_content("Review was successfully created.")
end

And('I should see average rating') do
    expect(page).to have_content("Average Rating (1-poor, 5-excellent):")
end