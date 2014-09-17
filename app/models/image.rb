class Image < Obj
  def menu_title
    self[:title] || "Image (#{file_name})"
  end

  def file_name
    path.split("/").last
  end

  def image?
    true
  end
end
