class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates :name, presence: true

  scope :ordered, -> { order(name: :asc) }
end
