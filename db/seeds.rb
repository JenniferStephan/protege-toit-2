# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Heb.destroy_all


Heb.create(name: 'ADALEA',
                    address: "50, rue de la Corderie, 22 000 Saint-brieuc",
                    nbmax: 4)

Heb.create(name: 'ADALEA 2',
                    address: "38, rue de Paris, 22 000 Saint-brieuc",
                    nbmax: 7)

Heb.create(name: 'ADALEA 3',
                    address: "30bis, rue Docteur Rochard, 22 000 Saint-brieuc",
                    nbmax: 2)

Heb.create(name: 'ADALEA 4',
                    address: "9, rue Napoléon 1er, 56 300 Pontivy",
                    nbmax: 8)
