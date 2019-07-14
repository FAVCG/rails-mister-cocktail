class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # destroy the parent and child(dependent::destroy)
  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
