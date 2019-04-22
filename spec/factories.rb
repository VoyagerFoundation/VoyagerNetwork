FactoryBot.define do
  factory :project do
    name { "MyString" } 
    description { "MyText" } 
    website { "" } 
    start_date { "2018-04-30"} 
  end
  factory :event do
    name { "MyString" } 
    date { "2018-04-15" } 
    tickets_url { "MyString" }
    livestream_url { "MyString" }
    country { "MyString" }
    city { "MyString" }
    venue { "MyString" }
    description { "MyString" }
    agenda { "MyString" }
    speakers { "MyString" }
  end
  factory :user do
    name { "MyString" }
    email { "#{first_name}.#{last_name}@example.com".downcase }
    password { "MyString" }
  end
end