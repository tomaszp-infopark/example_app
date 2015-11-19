class MultiColumnWidget < Widget
  attribute :title, :string
  attribute :subtitle, :string
  attribute :column1, :widgetlist
  attribute :column2, :widgetlist
  attribute :column3, :widgetlist
  attribute :column4, :widgetlist
  attribute :column_count, :enum, values: ['1', '2', '3', '4']

  default_for(:column_count) { '4' }

  def real_column_count
    real_count = self.column_count.to_i
    if real_count > 0 && real_count <= 4
      real_count
    else
      4
    end
  end
end
