FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "task-#{n}" }
    body { 'pui~' }
    status { 10 }
  end
end