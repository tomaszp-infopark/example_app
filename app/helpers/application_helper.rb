module ApplicationHelper
  def date_edit_tag(obj_or_widget, attribute, options={})
    options = options.reverse_merge(date_attributes)

    cms_tag(:span, obj_or_widget, attribute, options) do
      obj_or_widget[attribute].try(:strftime, '%B %d, %Y')
    end
  end

  private

  def date_attributes
    { data: { 'date-format' => 'MM dd, yy', 'time-format' => ' ' } }
  end
end
