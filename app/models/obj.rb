class Obj < Scrivito::BasicObj
  include ActionView::Helpers::SanitizeHelper

  def self.valid_page_classes_beneath(parent_path)
    [Page, Blog]
  end

  def menu_title
    self[:page_title].presence || self[:title].presence || "[Empty Title]"
  end

  def description_for_editor
    strip_tags(menu_title).presence || super
  end
end
