class Booking < ApplicationRecord
  # User who made a booking
  belongs_to :users
  # link to machine owner through the machines table
  belongs_to :users, through: :machines
  belongs_to :machines
  has_many :reviews, dependent: :destroy

  validates :dates, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
