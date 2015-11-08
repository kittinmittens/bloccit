include RandomData

FactoryGirl.define do
  factory :votes do
    up_vote :value(1)
    down_vote :value(-1)
  end
end
