FactoryGirl.define do
  factory :user do
    name     "Foo Bar"
    email    "foorbar@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end