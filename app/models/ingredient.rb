class Ingredient < ActiveRecord::Base
  attr_accessible :name , :description, :type_code, :yeast_code_wyeast, :yeast_code_wl

  validates_uniqueness_of :name, message: 'is already assigned'
  validates_presence_of :name, message: 'is required to create a new Ingredient'
  validates_length_of :name, maximum: 20,
    too_long: "length must be 20 or fewer characters"
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

end
