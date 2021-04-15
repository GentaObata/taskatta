class Task < ApplicationRecord
  enum status: { wating: 10, doing: 20, done: 30 }
  enum priority: { low: 10, middle: 20, high: 30 }
  validates :title, presence: true
  validates :status, presence: true
  validates :priority, presence: true

  def Task.search(word)
    status_id = Task.statuses[word] || 0
    return Task.all unless word
      Task.where('title LIKE ?', "%#{word}%")
      .or(where('status = ?', "#{status_id}"))
      .all
  end
end
