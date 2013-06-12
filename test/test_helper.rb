ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'rspec'
require 'capybara/rails'

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
  self.use_transactional_fixtures = false
end

module DatabaseCleaner
  def before_setup
    super
    Recipe.destroy_all
    Ingredient.destroy_all
    RecipeIngredient.destroy_all
    load 'db/test_seeds.rb'
  end
end