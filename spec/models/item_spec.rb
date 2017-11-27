require 'rails_helper'

RSpec.describe 'Item' do

  describe '#incomplete?' do
    it 'returns true when it is not completed' do
      item = FactoryGirl.create(:item, completed: false)
      expect(item.incomplete?).to eq true
    end

    it 'returns false when item is completed' do
      item = FactoryGirl.create(:item, completed: true)
      expect(item.incomplete?).to eq false
    end
  end

end

