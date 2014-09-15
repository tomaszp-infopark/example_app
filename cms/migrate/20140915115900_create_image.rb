class CreateImage < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'Image',
      is_binary: true,
      title: 'Image'
    )
  end
end
