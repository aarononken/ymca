families = Family.create([{ first_name: 'Sue'}, {last_name: 'Smith'}, {address: '897 2nd St.'}, {email: 'sue4@me.com'}, {spouse: 'Rob'}, {child_one: 'Lil'}, {child_two: 'Mike'}, {child_three: 'Joe'}])
#Family.create([{first_name: 'Sally'}, {last_name: 'Shoe'}, {phone_number: '3856293737'}, {address: '134 N St'}, {email: 'Shoes@pairs.com'}, {spouse: 'Bob'}])
Child.create(child_first_name: 'Eric', child_last_name: 'Shoe', family_id: '1')
Child.create(child_first_name: 'Alex', child_last_name: 'Shoe', family_id: '1')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
