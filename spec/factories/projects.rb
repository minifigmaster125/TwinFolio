
FactoryGirl.define do |p|
  factory :project do
    name "Sample Project"
    date Date.new(2013,1,1)
    info "Sample body"
  end
end
