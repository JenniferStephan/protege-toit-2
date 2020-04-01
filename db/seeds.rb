# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Heb.create(name: 'foyer cool',
                    address: "13 rue Morand, Paris",
                    nbmax: 4)

Heb.create(name: 'foyer paisible',
                    address: "20 rue Fontaine au Roi, Paris",
                    nbmax: 7)

Heb.create(name: 'foyer bourgeois',
                    address: "28 avenue Foch, Paris",
                    nbmax: 2)

Heb.create(name: 'foyer beau',
                    address: "150 rue Saint-Maur, Paris",
                    nbmax: 8)
