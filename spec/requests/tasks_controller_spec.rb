require 'rails_helper'

RSpec.describe "TasksControllers", type: :request do
  describe 'タスク一覧画面が正しく表示されること' do
    before do
      FactoryBot.create :task
      get root_path
    end
    it 'リクエストが成功すること' do
      expect(response.status).to eq 200
    end
    it 'レスポンスにタスクが含まれていること' do
      expect(response.body).to include "puipui"
    end
  end
end
