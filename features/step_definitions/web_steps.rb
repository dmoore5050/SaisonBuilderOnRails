Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  User.create(email: email, password: password)
end

Given(/^the ingredient "(.*?)", type code "(.*?)"$/) do |name, type|
  user = User.find_by_email('clyde@brewit.org')
  user.ingredients.create(name: name, type_code: type.to_i)
end

Given(/^an ingredient "(.*?)", type code "(.*?)"$/) do |name, type|
  Ingredient.create(name: name, type_code: type.to_i)
end

Given(/^the yeast "(.*?)", with WL code "(.*?)" and Wyeast code "(.*?)"$/) do |name, wl_code, wyeast_code|
  Ingredient.create(name: name, type_code: '3', yeast_code_wl: wl_code, yeast_code_wyeast: wyeast_code)
end

Given(/^a recipe ingredient with usage "(.*?)"$/) do  | usage |
  RecipeIngredient.create!(usage: usage.downcase)
end

Given(/^the recipe "(.*?)" using "(.*?)" lbs of "(.*?)"$/) do |recipe_name, quantity, ingredient_name|
  user = User.find_by_email('clyde@brewit.org')
  recipe = user.recipes.create(name: recipe_name)
  ingredient = Ingredient.where(name: ingredient_name).first
  recipe.recipe_ingredients.create!(ingredient_id: ingredient.id, quantity: quantity)
end

Given(/^the recipe "(.*?)" using 1 package of "(.*?)" and "(.*?)" ounces of "(.*?)" for "(.*?)" in the "(.*?)"$/) do |recipe_name, yeast_name, hop_quantity, hop_name, hop_duration, hop_usage|
  recipe = Recipe.create(name: recipe_name)
  yeast = Ingredient.where(name: yeast_name).first
  recipe.recipe_ingredients.create(ingredient_id: yeast.id, quantity: '1')
  hop = Ingredient.where(name: hop_name).first
  recipe.recipe_ingredients.create(ingredient_id: hop.id, quantity: hop_quantity, duration: hop_duration, usage: hop_usage)
end

When(/^I go to the homepage$/) do
  visit '/'
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I find and (?:click|press) the first "(.*?)"$/) do |text|
  within("li:first-child") do
    click_link_or_button text
  end
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

When(/^show me the page$/) do
  save_and_open_page
end