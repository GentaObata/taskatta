class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :task_status, foreign_key: :task_statuses_id

  def Task.search(word)
    return Task.all unless word
    Task.where('title LIKE ?', "%#{word}%")
  end
end
