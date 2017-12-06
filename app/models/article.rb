class Article < ActiveRecord::Base
  include MarkdownHelper

  scope :related_category_id, ->(id) { where(category_id: id) }
  scope :recent,           -> { order(updated_at: :desc) }

  def rendered_content
    markdown_to_html self.content
  end

  def related_category_name
    category = Category.find_by_id(self.category_id)
    category.parent
  end

  def formatted_created_at
    self.created_at.strftime("%m월%d일, %Y")
  end
end
