class BlueBoxWidget < Widget
  attribute :title, :string
  attribute :content, :widgetlist

  default_for(:title) { 'Wichtige Hinweise' }
end
