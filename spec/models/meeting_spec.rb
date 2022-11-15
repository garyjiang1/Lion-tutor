require 'rails_helper'

RSpec.describe Meeting, type: :model do
  context 'validation tests' do
    it 'ensures title is present' do
      meeting = Meeting.new(description:'test').save
      expect(meeting).to eq(false)
    end

    it 'ensures description is present' do
      meeting = Meeting.new(title:'test').save
      expect(meeting).to eq(false)
    end

    it 'ensures start time is present' do
      meeting = Meeting.new(end_time:'test').save
      expect(meeting).to eq(false)
    end

    it 'ensures end time is present' do
      meeting = Meeting.new(start_time:'test').save
      expect(meeting).to eq(false)
    end

  end
end