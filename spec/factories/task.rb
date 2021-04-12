FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "task-#{n}" }
    body { 'pui~' }
    task_statuses_id { 10 }
  end
end