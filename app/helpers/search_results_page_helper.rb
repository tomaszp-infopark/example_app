module SearchResultsPageHelper
  def search_result_text(obj, query)
    # Render the content of the page into one big string
    obj_content = strip_tags(
      scrivito_tag(:span, obj, :title).to_s + scrivito_tag(:span, obj, :body).to_s
    )

    content_with_query = excerpt(obj_content, query, radius: 200) ||
      truncate(obj_content, length: 400)

    highlight(content_with_query, query)
  end
end
