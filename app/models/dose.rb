class Dose < ApplicationRecord
  # validates :cocktail_id, :ingredient_id, presence: true
  validates :description, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
