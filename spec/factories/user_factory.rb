FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com"}
  
  factory :user do
    first_name "Test"
    last_name "Seven"
    email
    password "test7777"
    admin false
  end

  factory :admin, class: User do
    first_name "Sally"
    last_name "Admin" 
    email
    password "1234abcd" 
    admin true 
  end

end