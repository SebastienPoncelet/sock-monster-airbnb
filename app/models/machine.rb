class Machine < ApplicationRecord
  belongs_to :users
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :brand, presence: true
  validates :sock_count, presence: true
  validates :type, presence: true
  validates :location, presence: true
  validates :availability, presence: true
  validates :price, presence: true
end
