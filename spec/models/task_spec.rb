require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '正しくバリデーションされること'
    it "title isn't blank" do
      task = Task.new(title: "")
      expect(task).not_to be_valid
    end
end