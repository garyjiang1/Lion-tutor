require 'rails_helper'

RSpec.describe "Tutors", type: :request do
  describe "Test for tutors page" do
    it "returns a success for tutor page" do
      get tutors_path
      expect(response).to be_successful
    end

    it "returns a success and displays a newly created tutor" do
      tutor = Tutor.new(first_name:'md monirul', last_name:'islam', email:'test@gmail.com', phone:'1234', bio:'bio').save
      get tutors_path
      expect(response).to be_successful
      expect(response.body).to include("md monirul")
      expect(response.body).not_to include("gary")
    end
  end
end
