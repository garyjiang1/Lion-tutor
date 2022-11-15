class Meeting < ApplicationRecord
    # belongs_to :user, optional: true
    #belongs_to :tutor
    validates :title, presence: true
    validates :description, presence: true
    validates :start_time, :end_time, presence: true
end
