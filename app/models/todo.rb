class Todo < ApplicationRecord
  has_many :items

  def completed?
    items.any? && items.none?(&:incomplete?)
  end

  def as_json(options = {})
    super(options).merge(completed: completed?)
  end
end
