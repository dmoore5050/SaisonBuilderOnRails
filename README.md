SaisonBuilder:<br /> a [Nashville Software School](http://www.nashvillesoftwareschool.com) capstone project
================================================


Purpose
-------
SaisonBuilder is my final Capstone project for Nashville Software School Software Development course.

The project uses Ruby on Rails, and is unconstrained as to the gems and other software available for use.

The goal of this project is to create an app to help novice and veteran homebrewers alike navigate the nearly-limitless options available when designing and brewing an all-grain Saison, or Belgian Farmhouse ale.

Project Status
--------------

* Project is created and initialized.
* Initial models, migrations, and controllers are in place.
* Devise is in place.
* Wireframing complete.
* Initial integration test suite in place, using Cucumber, Capybara, and RSpec.


###To do:

* Implement views.
* Implement structure for Q/A format.
* Implement deep functionality.

Features
--------
The primary features of this app are as follows:

* **View and use one of six pre-generated recipes.** This functionality is intended for novice users who are interested in brewing a saison, but are unready to build or customize a recipe.

* **Customize one of six pre-generated recipes.** In this feature, a user is guided through the process of modifying an existing recipe in more than 50 ways; any ingredient in the recipe can be added, removed, or modified. This feature is geared towards mid-level users - advanced homebrewers who are unfamiliar with the style may find this useful to acclimate to the style before building a recipe from scratch, and mid-level homebrewers might take this route if they feel they are unready to build their own, while still wanting some degree of customization.

* **Build a saison recipe from scratch using included ingredients.** This functionality is intended for experienced/advanced homebrewers, who do not need a guided build process.

* **Add new ingredients to the database.** If a user wishes to include an ingredient in their recipe that doesn't already exist in the database, they can easily add the ingredient themselves.

Usage Instructions
------------------
Planned usage is as follows:

From the homepage, a user can follow the Learn or Ingredients links without logging in. This allows a user to view style and technique definitions, and a list of ingredients without signing in to an account.

To add or modify an ingredient or recipe, however, the user must be signed in to an existing account. Any custom or modified ingredients or recipes will be associated with that particular user.

The addition of ingredients and recipes are accomplished the simple forms. Modification of a recipe is done through a question-guided process that nonethless allows great flexibility.

Demo
----
http://saisonbuilderonrails.herokuapp.com/

Known Bugs
----------
There will be bugs.

Changelog
---------

+ 2013-6-14 - Initial setup complete. Integration tests in place.

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