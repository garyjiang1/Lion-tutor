class Tutor < ApplicationRecord
    belongs_to :user, optional: true
    has_many :reviews
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :bio, presence: true
end
