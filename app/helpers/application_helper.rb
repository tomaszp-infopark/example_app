module ApplicationHelper
  def date_edit_tag(obj_or_widget, attribute, options={})
    options = options.reverse_merge(date_attributes)

    scrivito_tag(:span, obj_or_widget, attribute, options) do
      format_date(obj_or_widget[attribute])
    end
  end

  def format_date(date)
    date.try(:strftime, '%b %d, %Y')
  end

  def almost_root(obj)
    if (obj.parent.nil? || Homepage === obj.parent)
      return obj
    else
      return almost_root(obj.parent)
    end
  end

  def recursive_navigation(start, css_class=nil)
    scrivito_tag_list :ul, start, :toclist, class: css_class do |list, obj|
      list.tag :li do
        content_tag(:i, '', class: "fa fa-plus") +
          link_to(obj.menu_title, scrivito_path(obj)) +
          recursive_navigation(obj)
      end
    end
  end

  private

  def date_attributes
    { data: { 'date-format' => 'MM dd, yy', 'time-format' => ' ' } }
  end
end
