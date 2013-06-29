class Recipe < ActiveRecord::Base
  attr_accessible :name, :boil_length, :primary_fermentation_temp, :description, :user_id, :user, :batch_size, :mash_length, :mash_temp, :recipe_ingredients_attributes, :notes

  validates_uniqueness_of :name, message: 'is already assigned'
  validates_presence_of :name, message: 'A name is required to create a new recipe'
  validates_length_of :name, maximum: 20,
    too_long: "length must be 20 or fewer characters"
  validates_length_of :description, maximum: 80,
    too_long: "length must be 20 or fewer characters"

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user

  accepts_nested_attributes_for :recipe_ingredients, :ingredients, allow_destroy: true,  reject_if: :reject_posts

  def reject_posts(attributed)
    attributed['ingredient_id'].blank?
  end

end
