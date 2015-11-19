class GrayBoxWidget < Widget
  attribute :title, :string
  attribute :content, :widgetlist

  default_for(:title) { 'Uni Menschen' }
end
