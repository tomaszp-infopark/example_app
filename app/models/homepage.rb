class Homepage < Obj
  def search_result_page
    SearchResultsPage.find_by_path('/search')
  end

  def toclist
    super.select do |obj|
      Obj.valid_page_classes_beneath('/').include?(obj.obj_class_name)
    end
  end
end
