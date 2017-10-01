module ApplicationHelper
  def categories_tab(_categories)
    html = ''
    categories = _categories.where(parent_id: nil)
    categories.each do |c|
      sub_category_tags = []
      sub_category_tags = c.sub_categories.map{|s| content_tag(:div, "- " + s.parent, class: "sub-category") } if c.sub_categories.present?
      category_tag = content_tag(:div, c.parent, class: "category")
      html += content_tag(:div, category_tag + sub_category_tags.join('').html_safe)
    end
    
    html.html_safe
  end
end
