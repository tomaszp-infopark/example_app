class CreatePage < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'Page',
      is_binary: false,
      attributes: [
        { name: 'main_content', type: 'widget' }
      ])
  end
end
