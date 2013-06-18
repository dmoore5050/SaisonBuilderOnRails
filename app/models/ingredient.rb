class Ingredient < ActiveRecord::Base
  attr_accessible :name , :description, :type_code, :yeast_code_wyeast, :yeast_code_wl, :user

  validates_uniqueness_of :name, message: 'is already assigned'
  validates_presence_of :name, message: 'A name is required to create a new ingredient'
  validates_length_of :name, maximum: 20,
    too_long: "length must be 20 or fewer characters"
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients, :recipes, allow_destroy: true

end