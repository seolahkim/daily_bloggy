class Category < ApplicationRecord
  has_many   :sub_categories, class_name: "Category", foreign_key: :parent_id
  belongs_to :categories,     class_name: "Category", optional: true

  scope :category_name, -> (id) { find(id).parent }
end
