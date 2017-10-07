class Article < ApplicationRecord
  scope :related_category, ->(id) { where(category_id: id) }
  scope :recent,           -> { order(updated_at: :desc) }
end
