class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence:true
  validates :ingredient, uniqueness: {scope: :cocktail}
  # just one dose of lemon for one cocktail
end
