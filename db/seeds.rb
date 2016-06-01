# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    Volunteer.destroy_all
    Organisation.destroy_all
    Proposal.destroy_all

    Volunteer.create(first_name: 'lj', last_name: 'krooker', email: 'ljkrooker@gmail.com', password: 'lj')
    Volunteer.create(first_name: 'dt', last_name: 'webmaster', email: 'dt@ga.co', password: 'dt')
    Volunteer.create(first_name: 'jb', last_name: 'forrest', email: 'jb@ga.com', password: 'jb')
    Volunteer.create(first_name: 'swanny', last_name: 'river', email: 'swanny@ga.com', password: 'swanny')

    Organisation.create(org_name: 'Hoop', first_name: 'Tom', last_name: 'Horny', email: 'tom@hoop.com', password: 'tom')
    Organisation.create(org_name: 'Intiwawa', first_name: 'Julie', last_name: 'Annoyica', email: 'julie@intiwawa.com', password: 'intiwawa')
    Organisation.create(org_name: 'Children First', first_name: 'John', last_name: 'Handcock', email: 'john@childrenfirst.com', password: 'childrenfirst')
    Organisation.create(org_name: 'Adults With Children', first_name: 'Lisa', last_name: 'Lovely', email: 'lisa@hoop.com', password: 'adultswithchildren')

    vol = Volunteer.first
    org = Organisation.first 
    Proposal.create(volunteer_id: vol.id, organisation_id: org.id, status: 'pending')
    vol = Volunteer.last
    org = Organisation.last
    Proposal.create(volunteer_id: vol.id, organisation_id: org.id, status: 'pending')



