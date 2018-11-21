class User < ApplicationRecord
  has_many :reviews
  has_many :machines, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # has_many :owned_bookings, through: :machines, source: :bookings

  # validates :first_name, presence: true
  # Cannot do it for the last name as WeChat only gives the nickname
  # validates :last_name, presence: true
end
