FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
  
  
  
  factory :author do
    sequence(:lastname)  { |n| "Person #{n}" }
    sequence(:firstname)  { |n| "Person #{n}" }
    sequence(:nickname) { |n| "Person #{n}" }
    sequence(:labo) { |n| "Labo #{n}"}   
    password "foobar"
    password_confirmation "foobar"
    end
end
