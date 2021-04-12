class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :task_status, foreign_key: :task_statuses_id
end
