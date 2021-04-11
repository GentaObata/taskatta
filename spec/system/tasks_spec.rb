require 'rails_helper'

RSpec.describe Task, type: :system do
  before do
    @task1 = FactoryBot.create :task
    @task2 = FactoryBot.create :task
  end
  describe 'タスク一覧画面を表示した時' do
    before do
      visit tasks_path
    end
    # it '作成日の降順でタスクがならんでいること' do
    #   expect(page.text).to match %r{#{@task2.title}.*#{@task1.title}}
    # end
    # it '終了期日順を選択すると、クエリパラメータがついたページに遷移すること' do
    # FIXME:selectしたあとにjsが動いていないため、ページが遷移しない
    #   select('終了期日順', from: 'sort')
    #   expect(current_path).to eq "#{root_path}?sort=due_time"
    # end
  end
end