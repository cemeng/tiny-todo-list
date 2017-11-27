class Item < ApplicationRecord
  belongs_to :todo

  def incomplete?
    !self.completed
  end
end
