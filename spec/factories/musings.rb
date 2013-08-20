
FactoryGirl.define do |p|
  factory :musing do
    title "Sample Musing"
    date Date.new(2013,1,1)
    post "Sample musing post"
  end
end
