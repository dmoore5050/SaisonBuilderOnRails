Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  User.create(email: email, password: password)
end

Given(/^the ingredient "(.*?)", type code "(.*?)"$/) do |name, type|
  type == '3' ? (wl_code, wyeast_code = '123', '1234') : (wl_code, wyeast_code = nil)
  user = User.find_by_email('clyde@brewit.org')
  user.ingredients.create(name: name, type_code: type.to_i, yeast_code_wl: wl_code, yeast_code_wyeast: wyeast_code)
end

Given(/^no user and the ingredient "(.*?)", type code "(.*?)"$/) do |name, type|
  Ingredient.create(name: name, type_code: type.to_i)
end

Given(/^a recipe ingredient with usage "(.*?)"$/) do  | usage |
  RecipeIngredient.create!(usage: usage.downcase)
end

Given(/^the recipe "(.*?)" using "(.*?)" (?:lbs|ozs|package) of "(.*?)"$/) do |recipe_name, quantity, ingredient_name|
  user = User.find_by_email('clyde@brewit.org')
  recipe = user.recipes.create(name: recipe_name)
  ingredient = Ingredient.where(name: ingredient_name).first
  recipe.recipe_ingredients.create!(ingredient_id: ingredient.id, quantity: quantity)
end

Given(/^no user and the recipe "(.*?)" using "(.*?)" (?:lbs|ozs|package) of "(.*?)"$/) do |recipe_name, quantity, ingredient_name|
  recipe = Recipe.create(name: recipe_name)
  ingredient = Ingredient.where(name: ingredient_name).first
  recipe.recipe_ingredients.create!(ingredient_id: ingredient.id, quantity: quantity)
end

When(/^I go to the homepage$/) do
  visit '/'
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I find and (?:click|press) the first "(.*?)" (?:link|button) in the list$/) do |text|
  within("li:first-child") do
    click_link_or_button text
  end
end

When (/^I find the first "(.*?)" (?:link|button) in the form and (?:click|press) it$/) do |text|
  within(".form_count:first-of-type button") do
    click_link_or_button text
  end
end

When(/^I choose "(.*?)" for "(.*?)"$/) do |option, field_name|
  select option, from: field_name
end

When(/^I find the last "(.*?)" select and choose "(.*?)"$/) do |field_name, option|
  within(".hidden") do
    select option, from: field_name
  end
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |text, field_name|
  fill_in field_name, with: text
end

When(/^I find the last "(.*?)" field and fill in "(.*?)"$/) do |field_name, text|
  within(".hidden") do
    fill_in field_name, with: text
  end
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content text
end

When(/^show me the page$/) do
  save_and_open_page
end