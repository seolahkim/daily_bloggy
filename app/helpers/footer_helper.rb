module FooterHelper
  def categories_tab(_categories)
    html = ''
    categories = _categories.where(parent_id: nil)
    categories.each do |c|
      sub_category_tags = []
      if c.sub_categories.present?
        sub_category_tags = 
        c.sub_categories.map do |s| 
          related_articles = Article.related_category(s.id)
          link_tag = link_to("- #{s.parent} (#{related_articles.count})", category_path(c.id))
          content_tag(:div, link_tag, class: "sub-category")
        end
      end
      
      
      category_tag = content_tag(:div, c.parent, class: "category")
      html += content_tag(:div, category_tag + sub_category_tags.join('').html_safe)
    end
    
    html.html_safe
  end
end
