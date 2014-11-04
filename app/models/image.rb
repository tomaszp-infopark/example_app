class Image < Obj
  def menu_title
    self[:title].presence || name
  end
end
