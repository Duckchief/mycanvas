# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
StandardPricelist.create!([
    {
        width: 10,
        height: 10,
        price: 10
    },
    {
        width: 8,
        height: 10,
        price: 30
    },
    {
        width: 12,
        height: 12,
        price: 35
    },
    {
        width: 12,
        height: 16,
        price, 39
    },
    {
        width: 12,
        height: 18,
        price: 42
    },
    {
        width: 16,
        height: 20,
        price: 55
    }
])