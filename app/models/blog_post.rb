class BlogPost < Obj
  def overview_headline
    self[:headline].presence || "[New Blog Post]"
  end
end
