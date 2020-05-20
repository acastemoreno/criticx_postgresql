class Game < ApplicationRecord
  belongs_to :company
  has_many :critics

  validates :name, :genre, :price, :release_date, presence: true
  validates :genre, inclusion: { in: ["Simulator", "Adventure", "Strategy", "Role-playing (RPG)", "Shooter", "Fighting", "Sport"]}
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end