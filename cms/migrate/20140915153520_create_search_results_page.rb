class CreateSearchResultsPage < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'SearchResultsPage',
      is_binary: false,
      attributes: [
        { name: 'side_content', type: 'widget' },
      ]
    )

    SearchResultsPage.create(
      _path: '/search',
      title: 'Search Results',
    )
  end
end
