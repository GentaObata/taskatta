require 'rails_helper'

RSpec.describe Task, type: :model do
  it "タイトルが空の場合バリデーションされること" do
    task = Task.new(title: "")
    expect(task).not_to be_valid
  end
end