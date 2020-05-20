class Company < ApplicationRecord
  has_many :games

  validates :name, presence: true, uniqueness: true, length: { maximum: 40 }
  validates :country, presence: true
end
