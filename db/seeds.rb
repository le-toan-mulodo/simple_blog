# encoding: UTF-8
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

User.create(name: 'toan', email: 'le.toan@mulodo.com', address: 'HCMC', male: true, password: '123456', password_confirmation: '123456',  role_id: 2)
User.create(name: 'teo', email: 'teo2323@mulodo.com', address: 'HCMC', male: true, password: '123456', password_confirmation: '123456',  role_id: 1)

Post.create(title: "Cứu kịp cụ bà trong đám cháy ở chung cư Ngô Gia Tự", body: "Được biết, căn phòng do ông Nguyễn Hải Bằng 33 tuổ...", created_at: "2013-08-27 11:20:09", updated_at: "2013-08-27 11:20:09", user_id: 1)
Post.create(title: "Test 1 ", body: "ĐTest 2...", created_at: "2013-08-27 11:20:09", updated_at: "2013-08-27 11:20:09", user_id: 1)
