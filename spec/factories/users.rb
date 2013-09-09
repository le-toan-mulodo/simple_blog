FactoryGirl.define do
  factory :user do |f|
    f.name "Jewr"
    f.email "abds@gmail.com"
    f.password "123456"
    f.password_confirmation "123456"
    f.role_id 1
  end
  
  factory :admin, parent: :user do
    email "admin@gmail.com"
    role_id 2
  end
     
end
