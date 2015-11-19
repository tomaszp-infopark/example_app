class Homepage < Obj
  attribute :body, :widgetlist
  attribute :right_column, :widgetlist

  attribute :child_order, :referencelist
  attribute :page_title, :string
  attribute :search_result_page, :reference
  attribute :title, :string

  def valid_widget_classes_for(fieldname)
    case fieldname.to_s
    when 'right_column'
      ['BlueBoxWidget', 'GrayBoxWidget', 'AdBoxWidget'].map(&:constantize)
    else
      ['MultiColumnWidget'].map(&:constantize)
    end
  end

  def css_class
    "portalstartpage"
  end

  def show_navigation?
    false
  end
end
