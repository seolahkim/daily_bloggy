class Category < ApplicationRecord
  has_many   :sub_categories, class_name: "Category", foreign_key: :parent_id
  has_many   :articles,       class_name: "Article",  foreign_key: :category_id
  belongs_to :categories,     class_name: "Category", optional: true

  scope :category_name, -> (id) { find(id).parent }
  scope :active_categories, -> { where(status: 0) }
end
