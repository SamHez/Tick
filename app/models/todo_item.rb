class TodoItem < ApplicationRecord

  
  validates :title, presence: true

  scope :done_items, -> { where(completed: true) }
  scope :todo_items, -> { where(completed: false) }

end
