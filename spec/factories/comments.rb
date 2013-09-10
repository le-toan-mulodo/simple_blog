FactoryGirl.define do
  factory :comment do
    association :user, factory: :another_user   
    body "Hello my body"    
    association :post, factory: :post
  end

  factory :invalid_comment, parent: :comment do |f|
    f.body nil
  end

end
