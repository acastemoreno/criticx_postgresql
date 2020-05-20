class Critic < ApplicationRecord
  belongs_to :game

  validates :username, presence: true, length: { minimum: 2, maximum: 12 }, format: { with: /\w/}
  validates :title, :body, presence: { message: "Please write something!" }
end
