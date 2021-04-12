require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'タイトルが空の場合バリデーションされること' do
    task = Task.new(title: "")
    expect(task).not_to be_valid
  end
  describe 'searhメソッドのテスト' do
    before do
      @task1 = create :task, title: 'hoge検索ワードhoge'
      @task2 = create :task, title: 'hogehoge'
      @task3 = create :task, title: 'done_task', task_statuses_id: '30'
    end
    it '検索ワードにが空なら全ての結果が返されること' do
      search_result = Task.search('')
      expect(search_result.count).to eq Task.all.count
    end
    it '検索ワードにマッチしたtitleのタスクが返されること' do
      search_result = Task.search('検索ワード')
      expect(search_result.first.title).to eq @task1.title
    end
    it '検索ワードにマッチしたステータスのタスクが返されること' do
      search_result = Task.search('done')
      expect(search_result.first.title).to eq @task3.title
    end
  end
end