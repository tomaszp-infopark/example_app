class TwoColumnWidget < Widget
  GRID_SIZE=12

  def column2_width
    GRID_SIZE - column1_width.to_i
  end

  def column1_width
    self[:column1_width].presence || '6'
  end
end
