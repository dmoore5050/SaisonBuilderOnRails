Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  User.create(email: email, password: password)
end

Given(/^the ingredient "(.*?)", type code "(.*?)"$/) do |name, type|
  Ingredient.create(name: name, type_code: type.to_i)
end

Given(/^the recipe "(.*?)" using "(.*?)" lbs of "(.*?)"$/) do |recipe_name, quantity, ingredient_name|
  recipe = Recipe.create(name: recipe_name)
  ingredient = Ingredient.where(name: ingredient_name).first
  recipe.recipe_ingredients.create(ingredient_id: ingredient.id, quantity: quantity)
end

When(/^I go to the homepage$/) do
  visit '/'
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |text, field_name|
  fill_in field_name, :with => text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content text
end

Then(/^I choose "(.*?)" for "(.*?)"$/) do |option, field_name|
  select option, :from => field_name
end