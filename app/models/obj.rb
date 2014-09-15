class Obj < Scrivito::BasicObj
  def self.valid_page_classes_beneath(parent_path)
    ['Page']
  end

  def menu_title
    self[:title].presence || "[Empty Title]"
  end
end
