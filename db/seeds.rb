ingredient_list = [
  ['pilsner', 'Pale base malt, prominent in continental examples.', '1', 'grain'],
  ['pale malt', 'Pale base malt, commonly used in American examples.', '1', 'grain'],
  ['munich', 'Base malt, adds richness. Use to supplement wheat, rye, pilsner, or pale malt.', '1', 'grain'],
  ['rye malt', 'Base malt, adds earthy, rustic malt character.', '1', 'grain'],
  ['wheat malt', 'Base malt, added to modify malt character. Doughy, mild.', '1', 'grain'],
  ['caramunich', 'Caramel malt, adds mild caramel/toffee flavors and sweetness.', '1', 'grain'],
  ['honey malt', 'Specialty malt. Adds distinctive honey-like sweetness.', '1', 'grain'],
  ['chocolate malt', 'Kilned specialty malt. Adds nutty, chocolate flavor and color.', '1', 'grain'],
  ['carafa 2 special', 'Kilned specialty malt. Adds color, mild roasty flavors w/o harshness.', '1', 'grain'],
  ['rice hulls', 'Imparts no flavor/sugars. Used to prevent stuck sparges when using wheat or rye.', '1', 'grain'],
  ['flaked oats', 'Contributes silky mouthfeel, and mildy nutty flavor if toasted.', '1', 'grain'],
  ['amarillo', 'New-world hop, floral, tangerine citrus character.', '2', 'hop'],
  ['hallertau', 'Old-world, floral, spicy, refined.', '2', 'hop'],
  ['saaz', 'Old-world, spicy, earthy.', '2', 'hop'],
  ['simcoe', 'New-world, pungent, pine, grapefruit, pineapple.', '2', 'hop'],
  ['sorachi', 'New-world, clean, string lemon character, bright.', '2', 'hop'],
  ['styrian goldings', 'Old-world, spicy, mildly floral, fruity.', '2', 'hop'],
  ['motueka', 'New-world, lemon-lime, bright citrus.', '2', 'hop'],
  ['dupont strain', 'Ferment: ~85F, can be slow to finish. Spicy/peppery, mild fruit.', '3', 'yeast', 565, 3724],
  ['french saison', 'Ferment: 65-72F. Aromatic fruit/citrus, peppery, clean.', '3', 'yeast', 656, 3711],
  ['american farmhouse', 'Ferment: 65-72F. Saison/Brett blend. Mild pepper, barnyard.', '3', 'yeast', 670],
  ['brett. brux. trois', 'Ferment: 65-72F. Mild, tart, delicate mango, pineapple.', '3', 'yeast', 644],
  ['brett. brux.', 'Ferment: 65-72F. Moderate intensity, horseblanket, bright lemon.', '3', 'yeast', 650, 5112],
  ['brett. clausenii', 'Ferment: 65-72F. Prominent pineapple/tropical fruit aromatics.', '3', 'yeast', 645],
  ['brett. lambicus', 'Ferment: 65-72F. Intense, barnyard, horseblanket, dank, musty.', '3', 'yeast', 653, 5526],
  ['cardamom', 'Adds a citrusy, ginger-like flavor with elements of cinnamon or nutmeg.', '4', 'spice'],
  ['citrus zest', 'Can use an array of varieties - lemon, lime, orange, etc.', '4', 'spice'],
  ['white peppercorns', 'Peppery, mild wine-like flavor.', '4', 'spice'],
  ['thai basil', 'Similar to sweet basil, but with notes of licorice.', '4', 'spice'],
  ['ginger', 'Clean, warm, woody sweetness, bright.', '4', 'spice'],
  ['peaches', 'Add to secondary fermentation.', '5', 'fruit'],
  ['blackberries', 'Add to secondary fermentation.', '5', 'fruit'],
  ['mango', 'Add to secondary fermentation. Tropical-fruit character, mildly tart.', '5', 'fruit'],
  ['currants', 'Tart, raisin-like flavor. Add to secondary fermentation.', '5', 'fruit'],
  ['hibiscus', 'Deep red in color, fruity flavor, notes of lemon and ripe berries.', '6', 'botanical'],
  ['lavender', 'Floral, spicy, notes of lemon and mint.', '6', 'botanical'],
  ['rose hips', 'Floral, citrusy, sour.', '6', 'botanical'],
  ['corn sugar', 'Adjunct. Adds no flavor; add to raise gravity without boosting body.', '7', 'adjunct'],
  ['turbinado sugar', 'Adjunct. Adds subtle molasses character.', '7', 'adjunct'],
  ['rice', 'Adjunct. Adds crispness, lightens body. Cook before adding to mash.', '7', 'adjunct']
]

ingredient_list.each do | name, description, type_code, category, yeast_code_wl, yeast_code_wyeast|
  Ingredient.create(name: name, description: description, type_code: type_code, category: category, yeast_code_wyeast: yeast_code_wyeast, yeast_code_wl: yeast_code_wl)
end

recipe_array = [
  [
    ['classic', '90 mins', '85F', 'Dry, rustic, yeast-centric, light pear, unadorned.', '5 gallons', '75 mins', '149F' ],
    [
      ['pilsner', nil, 9, nil],
      ['munich', nil, 1, nil],
      ['corn sugar', 'peak krausen', 1, nil],
      ['styrian goldings', 'boil', 1.5, '60 min'],
      ['saaz', 'boil', 0.5, '15 min'],
      ['dupont strain', 'primary', 1, nil]
    ]
  ],
  [
    ['hoppy classic', '90 mins', '85F', 'Dry, grassy, peppery, light pear, earthy.', '5 gallons', '75 mins', '149F'],
    [
      ['pilsner', nil, 9, nil],
      ['wheat malt', nil, 0.5, nil],
      ['munich', nil, 0.5, nil],
      ['corn sugar', 'peak krausen', 1, nil],
      ['styrian goldings', 'boil', 1.3, '60 min'],
      ['hallertau', 'boil', 1, '15 min'],
      ['styrian goldings', 'boil', 0.7, '1 min'],
      ['saaz', 'dryhop', 1, '5 days'],
      ['dupont strain', 'primary', 1, nil]
    ]
  ],
  [
    ['rye saison', '90 mins', '65-72F', 'Earthy malt character, restrained hops, yeast-forward.', '5 gallons', '75 mins', '149F'],
    [
      ['pilsner', nil, 6, nil],
      ['rye malt', nil, 3, nil],
      ['munich', nil, 1, nil],
      ['corn sugar', 'peak krausen', 1, nil],
      ['hallertau', 'boil', 1.75, '60 min'],
      ['hallertau', 'boil', 1, '1 min'],
      ['french saison', 'primary', 1, nil]
    ]
  ],
  [
    ['new world', '60 mins', '65-72F', 'Dry, bright, citrus, fruit, peppery.', '5 gallons', '75 mins', '149F'],
    [
      ['pale malt', nil, 7, nil],
      ['wheat malt', nil, 2, nil],
      ['munich', nil, 1, nil],
      ['turbinado sugar', 'peak krausen', 1, nil],
      ['hallertau', 'boil', 1.5, '60 min'],
      ['amarillo', 'boil', 1, '10 min'],
      ['motueka', 'whirlpool', 1, '20 min'],
      ['amarillo', 'dryhop', 1, '5 days'],
      ['simcoe', 'dryhop', 1, '5 days'],
      ['french saison', 'primary', 1, nil],
      ['brett. clausenii', 'secondary', 1, nil]
    ]
  ],
  [
    ['black saison', '60 mins', '65-72F', 'Complex malt character, mild roast, spicy yeast character.', '5 gallons', '75 mins', '149F'],
    [
      ['pale malt', nil, 8, nil],
      ['munich', nil, 2, nil],
      ['carafa 2 special', nil, 0.4, nil],
      ['chocolate malt', nil, 0.4, nil],
      ['hallertau', 'boil', 1.5, '60 min'],
      ['american farmhouse', 'primary', 1, nil],
    ]
  ],
  [
    ['pacific 6 grain', '60 mins', '65-72F', 'Bright, clean citrus, crisp, underlying malt complexity.', '5 gallons', '75 mins', '149F'],
    [
      ['pilsner', nil, 5, nil],
      ['rye malt', nil, 3, nil],
      ['wheat malt', nil, 1, nil],
      ['flaked oats', nil, 0.5, nil],
      ['munich', nil, 0.5, nil],
      ['rice hulls', nil, 0.15, nil],
      ['corn sugar', nil, 1, nil],
      ['hallertau', 'first wort hop', 1.25, nil],
      ['motueka', 'boil', 1, '20 min'],
      ['motueka', 'boil', 1, '0 min'],
      ['french saison', 'primary', 1, nil],
    ]
  ]
]

recipe_array.each do | recipe_arguments, ingredient_profiles |
  name, boil_length, ferm_temp, description, batch_size, mash_length, mash_temp = recipe_arguments
  Recipe.create(name: name, boil_length: boil_length, primary_fermentation_temp: ferm_temp, description: description, batch_size: batch_size, mash_length: mash_length, mash_temp: mash_temp )
  ingredient_profiles.each do | ingredient |
    the_recipe = Recipe.where(name: name).first
    ingredient_name, usage, quantity, duration = ingredient
    ingredient_match = Ingredient.where(name: ingredient_name).first
    the_recipe.recipe_ingredients.create(usage: usage, quantity: quantity, duration: duration, ingredient: ingredient_match)
  end
end
