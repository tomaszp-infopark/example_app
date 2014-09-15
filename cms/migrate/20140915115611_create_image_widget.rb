class CreateImageWidget < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'ImageWidget',
      is_binary: false,
      attributes: [
        { name: 'source', type: :reference },
      ]
    )
  end
end
