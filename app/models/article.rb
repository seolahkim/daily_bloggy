class Article < ActiveRecord::Base
  include MarkdownHelper

  scope :related_category, ->(id) { where(category_id: id) }
  scope :recent,           -> { order(updated_at: :desc) }

  def rendered_content
    markdown_to_html self.content
  end
end
