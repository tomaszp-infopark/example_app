class BlogPost < Obj
  def overview_title
    self[:title].presence || "[New Blog Post]"
  end

  def menu_title
    self[:page_title].presence || overview_title
  end
end
