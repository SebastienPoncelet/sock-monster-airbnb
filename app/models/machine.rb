class Machine < ApplicationRecord
  belongs_to :users
  has_many :bookings, dependent: :destroy
end