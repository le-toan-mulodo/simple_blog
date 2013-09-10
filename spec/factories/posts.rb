FactoryGirl.define do
  factory :post do 
    title "a title"
    body "a body"
    association :user, :factory => :user    
  end
  
  factory :invalid_post, parent: :post do 
      title nil      
  end
end
