<<<<<<< HEAD
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
=======
Family.create(parent_first_name: "Bob", parent_last_name: "Shoe", spouse_name: "Judy", phone: "4028675309", address: "1234 A Street")
Family.create(parent_first_name: "Sue", parent_last_name: "Abdullah", spouse_name: "Heisman", phone: "4027853709", address: "1234 B Street")
Family.create(parent_first_name: "Wednesday", parent_last_name: "Adams", spouse_name: "Gomez", phone: "4025654326", address: "1234 C Street")
Family.create(parent_first_name: "Amanda", parent_last_name: "Hogan", phone: "9098765432", address: "1234 D Street")
Family.create(parent_first_name: "Carl", parent_last_name: "Levine", spouse_name: "Hillary", phone: "8889997777", address: "1234 J Street")
Family.create(parent_first_name: "Maria", parent_last_name: "Smith", spouse_name: "Gordon", phone: "3214567567", address: "1623 Sesame Street")
Family.create(parent_first_name: "Michelle", parent_last_name: "Smith", phone: "4028895253", address: "10805 Brown Street")
Family.create(parent_first_name: "Greg", parent_last_name: "Smith", spouse_name: "Rachel", phone: "6754389876", address: "2121 Jump Street")
Family.create(parent_first_name: "Tabby", parent_last_name: "Kelly", spouse_name: "Mike", phone: "9098762432", address: "1234 Q Street")
Family.create(parent_first_name: "Jermaine", parent_last_name: "Hickman", spouse_name: "Gloria", phone: "4027879654", address: "3232 N 102 Street")


Child.create(child_first_name: 'Teddy', child_last_name: 'Shoe', family_id: 1)
Child.create(child_first_name: 'Ameer', child_last_name: 'Abdullah', family_id: 2)
Child.create(child_first_name: 'Hector', child_last_name: 'Abdullah', family_id: 2)
Child.create(child_first_name: 'Missy', child_last_name: 'Adams', family_id: 3)
Child.create(child_first_name: 'Sissy', child_last_name: 'Adams', family_id: 3)
Child.create(child_first_name: 'Tissy', child_last_name: 'Adams', family_id: 3)
Child.create(child_first_name: 'Rissy', child_last_name: 'Adams', family_id: 3)
Child.create(child_first_name: 'Patch', child_last_name: 'Adams', family_id: 3)
Child.create(child_first_name: 'Terry', child_last_name: 'Hogan', family_id: 4)
Child.create(child_first_name: 'Adam', child_last_name: 'Levine', family_id: 5)
Child.create(child_first_name: 'Bert', child_last_name: 'Smith', family_id: 6)
Child.create(child_first_name: 'Ernie', child_last_name: 'Smith', family_id: 6)
Child.create(child_first_name: 'Grover', child_last_name: 'Smith', family_id: 6)
Child.create(child_first_name: 'Emilee', child_last_name: 'Hill', family_id: 7)
Child.create(child_first_name: 'Elliot', child_last_name: 'Hill', family_id: 8)
Child.create(child_first_name: 'Addison', child_last_name: 'Kelly', family_id: 9)
Child.create(child_first_name: 'Jacob', child_last_name: 'Kelly', family_id: 9)
Child.create(child_first_name: 'Terrance', child_last_name: 'Hickman', family_id: 10)

>>>>>>> 3e8371bfd78407cedf23a48539e4d20fe6e4a58b
