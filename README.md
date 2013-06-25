SaisonBuilder:<br /> a [Nashville Software School](http://www.nashvillesoftwareschool.com) capstone project
================================================


Purpose
-------
SaisonBuilder is my final Capstone project for Nashville Software School Software Development course.

The project uses Ruby on Rails, and is unconstrained as to the gems and other software available for use.

The goal of this project is to create an app to help homebrewers navigate the nearly-limitless options available when designing and brewing an all-grain Saison, or Belgian Farmhouse ale.

Project Status
--------------

[![Build Status](https://travis-ci.org/dmoore5050/SaisonBuilderOnRails.png)](https://travis-ci.org/dmoore5050/SaisonBuilderOnRails)
[![Code Climate](https://codeclimate.com/github/dmoore5050/SaisonBuilderOnRails.png)](https://codeclimate.com/github/dmoore5050/SaisonBuilderOnRails)
[![Coverage Status](https://coveralls.io/repos/dmoore5050/SaisonBuilderOnRails/badge.png?branch=master)](https://coveralls.io/r/dmoore5050/SaisonBuilderOnRails?branch=master)

The following features are in place:

* View Technique/Style articles
* View Recipe/Ingredient lists
* View Recipe
* Modify existing Recipes
* Create new Ingredients/Recipes
* Delete user-created Ingredients/Recipes

###To do:

* Implement Travis/CodeClimate/Coveralls
* Style app
* Explore Draper, Bourbon/Neat gems.

Features
--------
The primary features of this app are as follows:

* **Learn about saisons:** Articles on the Saison style and on general brewing techniques are included, and can be viewed by the user.

* **View lists of current Recipes/Ingredients:** The app comes with a catalog of 40 included ingredients and 6 included recipes. Clicking on Recipes or Ingredients in the top nav bar will open a list of said records. As the the user adds recipes/ingredients, those will be included in the lists.

* **View a recipe:** Any recipe in the catalog can be viewed by clicking its name in the list. The output is formatted to maximize read- and usability.

* **Add new recipes/ingredients:** In addition to the included catalog of recipes and ingredients, the user can press the "Add Recipe" or "Add Ingredient" buttons on the respective list page and use a form to add a custom Ingredient/Recipe to the catalog. Custom Recipes can have an unlimited number of ingredients.

* **Customize any existing recipe:** In addition to creating an all-new recipe, a user can also modify any existing recipe by clicking the "Modify" button next to the Recipe's description in the Recipe list. This will take the user to a preloaded form where the user can add additional Ingredients or modify any existing parameter(s).

* **Delete existing user-generated Recipes/Ingredients:** Finally, a user can delete any user-generated recipes by clicking that recipe's "Delete" button located after the "Modify" button in the Recipe list.

Usage Instructions
------------------
Planned usage is as follows:

From the homepage, a user can follow the Learn, Ingredients, and Recipes links without logging in. This allows a user to view style and technique definitions, and lists of ingredients/recipes without signing in to an account.

To add or modify an ingredient or recipe, the user must be signed in to an existing account. Any custom or modified ingredients or recipes will be associated with that particular user, and are only viewable when that user is logged in.

Deletion/Modification of Recipes and Deletion of Ingredients are accomplished using buttons on the Recipe/Ingredient list pages. Addition of a new Ingredient or Recipe are accomplished by clicking the "Add Record/Ingredient" buttons on the respective list pages. Additionally, A new Recipe can be created by clicking the "Build Saison" button on the main page.

The addition/modification of ingredients and recipes are accomplished using forms.

Demo
----
http://saisonbuilderonrails.herokuapp.com/

Known Bugs
----------

Changelog
---------

+ 2013-6-14 - Initial setup complete. Integration tests in place.
+ 2013-6-15 - Ingredients/Learn views in place. Fleshing out controllers/views.
+ 2013-6-16 - Implemented view recipe, breadcrumbs.
+ 2013-6-17 - Added add'l columns to Recipe, styling.
+ 2013-6-18 - More styling, changes to Add Recipe view.
+ 2013-6-19 - Styling, fine-tuned column attributes.
+ 2013-6-20 - Changed Ingredients list to print type-order properly.
+ 2013-6-21 - Add recipe now working.
+ 2013-6-22 - General refactoring. Implemented initial Modify Recipe view.
+ 2013-6-23 - Modify recipe finished,add'l bug fixes and refactoring.
+ 2013-6-24 -

Acknowledgements
----------------
I would like to thank the following NSS staff/mentors who have lent advice and perspective on this project and its predecessor:

+ Eliza Brock
+ Hassan Shamim
+ Ben Bridges
+ Adam Scott
+ Jeff Felchner
+ James Fryman

Author
------
Dustin Moore

License
-------
Copyright (c) 2013 Dustin Moore

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
