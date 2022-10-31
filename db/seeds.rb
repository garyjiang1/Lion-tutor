# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

seed_tutors = [
  { first_name: 'Faiza', last_name: 'Khan', email: 'fk2421@columbia.edu', phone: '4138010773', bio: 'I am a CVN CS Columbia Masters Student and a Software Engineer at JPMorgan Chase. I have prior teaching experience in Computer Networks and believe that I will be an excellent peer tutor for Engineering Software as a Service as well.', created_at: '25-Oct-2022', updated_at: '25-Oct-2022' },
  { first_name: 'Sahitya', last_name: 'Raipura', email: 'sr3962@columbia.edu', phone: '7815306306', bio: 'I am a first year MSCS student in the Machine Leraning Track. I have found the topics in this course very interesting and therefore think I will be a great peer tutor', created_at: '25-Oct-2022', updated_at: '25-Oct-2022' },
  { first_name: 'Md Monirul', last_name: 'Islam', email: 'im2594@columbia.edu', phone: '7744058614', bio: 'I am a CVN CS Columbia Masters Student working at Coinbase', created_at: '25-Oct-2022', updated_at: '25-Oct-2022' },
  { first_name: 'Gary', last_name: 'Jiang', email: 'jj3179@columbia.edu', phone: '8572646492', bio: 'I am a CVN CS Columbia Masters Student. I have previous tutoring experience in Computer Algorithms and Discrete Math from my undergraduate studies.', created_at: '25-Oct-2022', updated_at: '25-Oct-2022' },
]

seed_tutors.each do |tutor|
  Tutor.create!(tutor)
end
