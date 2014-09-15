class CreateHomepage < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'Homepage',
      is_binary: false,
      attributes: [
        { name: 'main_content', type: 'widget' },
        { name: 'child_order', type: 'referencelist' },
      ]
    )

    Homepage.create(
      _path: '/',
      title: 'Your ScrivitoExample',
    )
  end
end
