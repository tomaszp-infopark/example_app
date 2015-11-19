class Page < Obj
  attribute :body, :widgetlist
  attribute :right_column, :widgetlist
  attribute :page_title, :string
  attribute :title, :string
  attribute :child_order, :referencelist

  #default_for(:body) do 
  #  [MultiColumnWidget.new(column_count: '1')]
  #end

  def valid_widget_classes_for(fieldname)
    case fieldname.to_s
    when 'right_column'
      ['BlueBoxWidget', 'GrayBoxWidget', 'AdBoxWidget'].map(&:constantize)
    else
      ['MultiColumnWidget'].map(&:constantize)
    end
  end

  def css_class
    "contentpage"
  end
end
