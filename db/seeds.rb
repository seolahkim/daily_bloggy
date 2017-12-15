# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a default list of Category
Category.create parent: "UI/UX"
Category.create parent: "CSS"
Category.create parent: "JavaScript"
Category.create parent: "TypeScript",       parent_id: Category.find_by(parent: 'JavaScript').id
Category.create parent: "CoffeeScript",     parent_id: Category.find_by(parent: 'JavaScript').id
Category.create parent: "jQuery",           parent_id: Category.find_by(parent: 'JavaScript').id
Category.create parent: "Angular2",         parent_id: Category.find_by(parent: 'JavaScript').id
Category.create parent: "Underscore",       parent_id: Category.find_by(parent: 'JavaScript').id
Category.create parent: "Lodash",           parent_id: Category.find_by(parent: 'JavaScript').id
Category.create parent: "Ruby"
Category.create parent: "RubyOnRails",      parent_id: Category.find_by(parent: 'Ruby').id
Category.create parent: "Jekyll",           parent_id: Category.find_by(parent: 'Ruby').id
Category.create parent: "Git"
Category.create parent: "Tools"
Category.create parent: "Atom",             parent_id: Category.find_by(parent: 'Tools').id
