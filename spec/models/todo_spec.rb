require 'rails_helper'

RSpec.describe 'Todo' do

  let!(:todo) { FactoryGirl.create(:todo) }

  describe '#completed?' do
    it 'returns true when all items is completed' do
      FactoryGirl.create(:item, completed: true, todo: todo)
      expect(todo.completed?).to eq true
    end

    it 'returns false when there is an incomplete item' do
      FactoryGirl.create(:item, completed: false, todo: todo)
      expect(todo.completed?).to eq false
    end

    it 'returns false when there is no items' do
      expect(todo.completed?).to eq false
    end
  end

end
