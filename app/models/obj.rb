class Obj < Scrivito::BasicObj
  include ActionView::Helpers::SanitizeHelper

  def self.valid_page_classes_beneath(parent_path)
    [Page]
  end

  def menu_title
    self[:page_title].presence || self[:title].presence || "[Empty Title]"
  end

  def description_for_editor
    strip_tags(menu_title)
  end

  def css_class
    ""
  end

  def show_navigation?
    true
  end
end
