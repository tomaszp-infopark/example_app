class SearchResultsPageController < CmsController
  def index
    @search_results = Obj.where(:*, :contains_prefix, params[:q]).take(10)
  end
end
