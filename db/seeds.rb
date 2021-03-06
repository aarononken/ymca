Family.create(parent_first_name: "Bob", parent_last_name: "Shoe", spouse_name: "Judy", phone: "4028675309", address: "1234 A Street", password: "0001")
Family.create(parent_first_name: "Sue", parent_last_name: "Abdullah", spouse_name: "Heisman", phone: "4027853709", address: "1234 B Street", password: "0002")
Family.create(parent_first_name: "Wednesday", parent_last_name: "Adams", spouse_name: "Gomez", phone: "4025654326", address: "1234 C Street", password: "0003")
Family.create(parent_first_name: "Amanda", parent_last_name: "Hogan", phone: "9098765432", address: "1234 D Street", password: "0004")
Family.create(parent_first_name: "Carl", parent_last_name: "Levine", spouse_name: "Hillary", phone: "8889997777", address: "1234 J Street", password: "0005")
Family.create(parent_first_name: "Maria", parent_last_name: "Smith", spouse_name: "Gordon", phone: "3214567567", address: "1623 Sesame Street", password: "0006")
Family.create(parent_first_name: "Michelle", parent_last_name: "Smith", phone: "4028895253", address: "10805 Brown Street", password: "0007")
Family.create(parent_first_name: "Greg", parent_last_name: "Smith", spouse_name: "Rachel", phone: "6754389876", address: "2121 Jump Street", password: "0008")
Family.create(parent_first_name: "Tabby", parent_last_name: "Kelly", spouse_name: "Mike", phone: "9098762432", address: "1234 Q Street", password: "0009")
Family.create(parent_first_name: "Jermaine", parent_last_name: "Hickman", spouse_name: "Gloria", phone: "4027879654", address: "3232 N 102 Street", password: "0000")
Family.create(parent_first_name: "Marge", parent_last_name: "Simpson", spouse_name: "Homer", phone: "9395550113", address: "742 Evergreen Terrace", password: "duff")

Child.create(child_first_name: 'Bart', child_last_name: 'Simpson', family_id: 11)
Child.create(child_first_name: 'Lisa', child_last_name: 'Simpson', family_id: 11)
Child.create(child_first_name: 'Maggie', child_last_name: 'Simpson', family_id: 11)
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

Program.create(program_name: "Child Care")
Program.create(program_name: "After School")
Program.create(program_name: "Summer Day Camp")

Membership.create(program_id: 2, child_id: 1)
Membership.create(program_id: 3, child_id: 1)
Membership.create(program_id: 2, child_id: 2)
Membership.create(program_id: 2, child_id: 2)
Membership.create(program_id: 3, child_id: 3)

Check.create(family_id: 11, child_id: 1, program_id: 2, checked_in: true)
Check.create(family_id: 11, child_id: 2, program_id: 2, checked_in: true)
Check.create(family_id: 11, child_id: 3, program_id: 1, checked_in: true)

AdminUser.create(email:'admin@example.com', password:'password')