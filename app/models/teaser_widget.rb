class TeaserWidget < Widget
  attribute :title, :string
  attribute :image, :reference
  attribute :content, :widgetlist
  #attribute :related_links, :linklist
  attribute :related_link, :link

  attribute :teaser_type, :enum, values: ['teaserImage', 'imageLeft']

  default_for(:teaser_type) { 'teaserImage' }
  default_for(:content) { [TextWidget.new] }
end
