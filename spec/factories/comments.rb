FactoryGirl.define do
  factory :comment do |f|
    f.body "a title"
    f.user_id 1
    f.post_id 1
  end
  
  factory :invalid_comment, parent: :comment do |f|
    f.body nil
  end

end
