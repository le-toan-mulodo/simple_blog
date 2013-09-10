FactoryGirl.define do
  factory :user do 
    name "Jewr"
    email "toan@mulodo.com"
    password "123456"
    password_confirmation "123456"
    association :role, factory: :user_type
  end
  
  factory :admin, parent: :user do
    email "admin@mulodo.com"
    association :role, factory: :admin_type
  end
  
  factory :another_user, parent: :user do
    email "another@mulodo.com"
    association :role, factory: :user_type
  end
     
end
