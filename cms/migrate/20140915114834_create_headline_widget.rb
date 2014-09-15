class CreateHeadlineWidget < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'HeadlineWidget',
      is_binary: false,
      attributes: [
        { name: 'headline', type: :string },
      ]
    )
  end
end
