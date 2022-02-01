# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Menu.create([{ week_number: 1, day_menu: 'Monday', name: 'Chicken and waffles' },
             { week_number: 1, day_menu: 'Tuesday', name: 'Tacos' },
             { week_number: 1, day_menu: 'Wednesday', name: 'Curry' },
             { week_number: 1, day_menu: 'Thursday', name: 'Pizza' },
             { week_number: 1, day_menu: 'Friday', name: 'Sushi' },
             { week_number: 2, day_menu: 'Monday', name: 'Breakfast for lunch' },
             { week_number: 2, day_menu: 'Tuesday', name: 'Hamburgers' },
             { week_number: 2, day_menu: 'Wednesday', name: 'Spaghetti' },
             { week_number: 2, day_menu: 'Thursday', name: 'Salmon' },
             { week_number: 2, day_menu: 'Friday', name: 'Sandwiches' }])
