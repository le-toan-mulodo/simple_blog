FactoryGirl.define do
  factory :role do 
    name "a name"
    description "a description"       
  end
  
  factory :user_type, parent: :role do 
      name "User"
      description "This is an user"
  end
  
  factory :admin_type, parent: :role do 
      name "Admin"
      description "This is an admin"
  end
  
  
end
