# hw3

Flutter homework

## Explanation

This is meals application which contains data about how to cook specified meals.

### How it is built

Project contains model folder in which objects are stored.
In model/meal.dart there is meal object 

Project also contains data folder in which sample data stored.
In data/meals.dart there is List of meal objects as sample data.

main.dart is the entrance point of application. There is applyed theme data.
Then it opens tabs.dart file from screens folder.

Tabs.dart file contains Scaffold with side Drawer and opens homeScreen or FavoriteScreen depending the user selection.

home.dart file contains HomeScreen which is simply lists of all objects in data list.
Each list objects are tappable. When it is tapped it opens MealDetailScreen, which contains description of a meal.

There is also side Drawer which contains two tiles.
