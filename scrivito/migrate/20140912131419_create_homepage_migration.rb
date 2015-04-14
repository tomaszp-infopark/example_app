class CreateHomepageMigration < ::Scrivito::Migration
  def up
    Homepage.create(
      _path: '/',
      title: 'Your ScrivitoExample',
    )
  end
end
