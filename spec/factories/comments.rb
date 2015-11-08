include RandomData

FactoryGirl.define do
  factory :comments do
    body RandomData.random_paragraph
  end
end
