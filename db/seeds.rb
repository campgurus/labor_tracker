# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Role.count == 0
  puts "Creating Some Roles..."
  roles =
  [
    {name: "Packer"},
    {name: "SLAM Operator"},
    {name: "SLAM Water Spider"},
    {name: "Water Spider"},
    {name: "Problem Solver"},
    {name: "Tote Replenishment"},
    {name: "Process Guide"}
  ]

  roles.each do |role|
    Role.create(role)
  end
end

if Associate.count == 0
  puts "Creating Some Associates..."
  associates =
  [
    {first_name: "Julena", last_name: "Gray", employee_id:"101192790"},
    {first_name: "Robert", last_name: "Stewart", employee_id:"101364263"},
    {first_name: "Shirley", last_name: "Francois", employee_id:"101364269"},
    {first_name: "Kyaira", last_name: "Brantley", employee_id:"101387127"},
    {first_name: "David", last_name: "Vinh", employee_id:"101387151"},
    {first_name: "Lamont", last_name: "Morgan", employee_id:"101427788"},
    {first_name: "Cumorah", last_name: "Williams", employee_id:"101427734"}
  ]

  associates.each do |associate|
    Associate.create(associate)
  end
end

if PlannedRole.count == 0
  puts "Creating Some Plans..."
  planned_roles =
  [
    {associate_id: 1, role_id: 2, employee_id: Associate.find(1).employee_id },
    {associate_id: 2, role_id: 7, employee_id: Associate.find(2).employee_id },
    {associate_id: 3, role_id: 5, employee_id: Associate.find(3).employee_id },
    {associate_id: 4, role_id: 3, employee_id: Associate.find(4).employee_id },
    {associate_id: 5, role_id: 1, employee_id: Associate.find(5).employee_id },
    {associate_id: 6, role_id: 6, employee_id: Associate.find(6).employee_id },
    {associate_id: 7, role_id: 4, employee_id: Associate.find(7).employee_id }
  ]

  planned_roles.each do |plan|
    PlannedRole.create(plan)
  end
end