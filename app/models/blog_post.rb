class BlogPost < Obj
  def overview_headline
    self[:headline].presence || "[New Blog Post]"
  end

  def menu_title
    self[:title].presence || overview_headline
  end
end
