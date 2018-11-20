class Machine < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :sock_count, presence: true
  validates :location, presence: true
  validates :availability, presence: true
  validates :price, presence: true
end
