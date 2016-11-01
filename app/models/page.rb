class Page < Obj
  attribute :body, :widgetlist
  attribute :page_title, :string
  attribute :title, :string
  attribute :some_int, :integer
  attribute :some_enum, :enum, :values => ['a', 'b']

  default_for :some_int do
    1
  end

  default_for :some_enum do
    'b'
  end
end
