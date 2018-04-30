FactoryBot.define do
  factory :project do
    user nil
    name "MyString"
    description "MyText"
    website ""
    start_date "2018-04-30"
  end
  factory :event do
    name "MyString"
    date "2018-04-15"
    tickets_url "MyString"
    livestream_url "MyString"
    country "MyString"
    city "MyString"
    venue "MyString"
    description "MyString"
    agenda "MyString"
    speakers "MyString"
  end
  factory :user do
    name "Joe"
    email "joe@voyager.com"
    password "blah_blah1"
  end
end