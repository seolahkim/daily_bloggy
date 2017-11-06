module ApplicationHelper
  include MarkdownHelper
  include FooterHelper

  def display_breadcrumbs
    return false if @breadcrumbs.items.blank?
    breadcrumbs_list =
      @breadcrumbs.items.map do |item|
        content_tag(:label, item[:name], class: "breadcrumb") 

      end
    breadcrumbs_list.join(content_tag(:span, " > ")).html_safe
  end
end
