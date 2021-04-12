require 'rails_helper'

RSpec.describe "TasksControllers", type: :request do
  describe 'タスク一覧画面を表示したとき' do
    before do
      FactoryBot.create :task
      get root_path
    end
    it 'リクエストが成功すること' do
      expect(response.status).to eq 200
    end
    it 'レスポンスにタスクが含まれていること' do
      expect(response.body).to include "pui~"
    end
  end

  describe '新規タスクを登録したとき' do
    let(:params) { { task: {title: title, body: 'task body'} } }
    subject { post tasks_path, params: params }
    context 'タイトルが空の場合' do
      let(:title) { nil }
      it '登録できないこと' do
        subject
        expect(response.body).to include 'error'
      end
    end
    context 'タイトルが空ではない時' do
      let(:title) { '正しいタイトル' }
      it 'タスクが一つ増えること' do
        expect { subject }.to change(Task, :count).by(1)
      end
      it 'flashメッセージが表示されること' do
        subject
        expect(flash[:success]).to be_present
      end
    end
  end

  describe 'タスクの編集したとき' do
    before do
      @task = FactoryBot.create :task
    end
    let(:params) { { task: {title: 'task title', body: 'task body'} } }
    it '変更内容が反映されること' do
      patch task_path(@task), params: params
      # patch :update, params: { id: @task.id, task: {title: 'task title', body: 'task body'} }
      expect(@task.reload.title).to eq "task title"
    end
    it 'flashメッセージが表示されること' do
      patch task_path(@task), params: params
      expect(flash[:success]).to be_present
    end
  end
end
