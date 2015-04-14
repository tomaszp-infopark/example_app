class CreateSearchResultsPageMigration < ::Scrivito::Migration
  def up
    search_page = SearchResultsPage.create(
      _path: '/_global/search',
      title: 'Search Results',
    )

    Obj.homepage.update(search_result_page: search_page)
  end
end
