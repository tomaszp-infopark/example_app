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

  def editing_icon(html_class)
    content_tag(:i, '', class: "icon glyphicon glyphicon-#{html_class}")
  end

  private

  def date_attributes
    { data: { 'date-format' => 'MM dd, yy', 'time-format' => ' ' } }
  end
end
