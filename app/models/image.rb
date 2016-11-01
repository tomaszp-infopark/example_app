class Image < Obj
  attribute :blob, :binary

  attribute :some_int, :integer
  attribute :some_enum, :enum, :values => ['a', 'b']

  default_for :some_int do
    1
  end

  default_for :some_enum do
    'b'
  end

  def menu_title
    self[:title].presence || name
  end
end
