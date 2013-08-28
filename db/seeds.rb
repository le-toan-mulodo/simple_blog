# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
type_user_lists = [
  [ "User", "This is normal user" ],
  [ "Admin", "This account can manage normal users" ]  
]

type_user_lists.each do |type, description|
  Role.create( name: type, description: description )
end

User.create(name: 'toan', email: 'le.toan@mulodo.com', address: 'HCMC', male: true, password_digest: "$2a$10$PdM77lyk0R0pxvmy5drNceFqanwq4fRZ4q.yPCgw2Hn1yf2S.GiOm",  role_id: 2)
