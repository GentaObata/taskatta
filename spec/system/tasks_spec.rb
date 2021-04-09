require 'rails_helper'

RSpec.describe Task, type: :system do
  before do
    @task1 = FactoryBot.create :task
    @task2 = FactoryBot.create :task
  end
  describe 'タスク一覧画面を表示した時' do
    it '作成日の降順でタスクがならんでいること' do
      visit tasks_path
      # expect(page.text).to match 'task-6'
      expect(page.text).to match %r{#{@task2.title}.*#{@task1.title}}
    end
  end
end