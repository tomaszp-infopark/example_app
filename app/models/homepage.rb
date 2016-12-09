class Homepage < Obj
  attribute :body, :widgetlist
  attribute :child_order, :referencelist
  attribute :page_title, :string
  attribute :search_result_page, :reference
  attribute :title, :string

  attribute :test_attr_reflist, :referencelist
  attribute :test_attr_ref, :reference
end
