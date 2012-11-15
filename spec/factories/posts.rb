# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    description "MyText"
  end

  factory :other_post, :class => Post do
    title "MyOtherString"
    description "MyOtherText"
  end
end
