class Image < Obj
  def menu_title
    self[:title].presence || name
  end

  def image?
    true
  end

end
