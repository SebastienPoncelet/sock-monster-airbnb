class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :machines
  has_many :reviews, dependent: :destroy
end
