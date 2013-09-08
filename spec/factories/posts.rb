FactoryGirl.define do
  factory :post do |f|
    f.title "a title"
    f.body "a body"
    f.user_id "1"    
  end
  
  factory :invalid_post, parent: :post do 
      title nil      
  end
end
