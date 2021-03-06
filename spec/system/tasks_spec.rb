require 'rails_helper'

RSpec.describe Task, type: :system do
  before do
    @task1 = create :task, due_time: '2021/04/12 11:00', priority: 'low'
    @task2 = create :task, due_time: '2021/04/13 11:00', priority: 'middle'
    @task3 = create :task, due_time: '2021/04/13 11:00', priority: 'high'
  end
  describe 'タスク一覧画面を表示した時' do
    it 'デフォルトでは作成日の降順でタスクがならんでいること' do
      visit tasks_path
      expect(page.text.index(@task2.title)).to be < page.text.index(@task1.title)
    end
    it '?sort=due_timeをつけることで終了期日で昇順にタスクが並んでいること' do
      visit "#{tasks_path}?sort=due_time"
      expect(page.text.index(@task1.title)).to be < page.text.index(@task2.title)
    end
    it '?sort=due_timeをつけることで優先度の高→中でタスクが並んでいること' do
      visit "#{tasks_path}?sort=priprity"
      expect(page.text.index(@task3.title)).to be < page.text.index(@task2.title)
    end
    it '?sort=due_timeをつけることで優先度の中→低でタスクが並んでいること' do
      visit "#{tasks_path}?sort=priprity"
      expect(page.text.index(@task2.title)).to be < page.text.index(@task1.title)
    end
  end
end