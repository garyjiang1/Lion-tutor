require 'rails_helper'
# here we are testing to model to ensure a tutor is filling out all the required fields 

RSpec.describe Tutor, type: :model do
  context 'validation tests' do
    it 'ensures first name is present' do
      tutor = Tutor.new(last_name:'last', email:'test@gmail.com').save
      expect(tutor).to eq(false)
    end

    it 'ensures last name is present' do
      tutor = Tutor.new(first_name:'first', email:'test@gmail.com').save
      expect(tutor).to eq(false)
    end

    it 'ensures email name is present' do
      tutor = Tutor.new(first_name:'first', last_name:'last').save
      expect(tutor).to eq(false)
    end

    it 'ensures phone name is present' do
      tutor = Tutor.new(first_name:'first', last_name:'last').save
      expect(tutor).to eq(false)
    end

    it 'ensures bio name is present' do
      tutor = Tutor.new(first_name:'first', last_name:'last').save
      expect(tutor).to eq(false)
    end

    it 'should successfully save a tutor' do
      tutor = Tutor.new(first_name:'first', last_name:'last', email:'test@gmail.com', phone:'1234', bio:'bio').save
      expect(tutor).to eq(true)
    end

  end

end
