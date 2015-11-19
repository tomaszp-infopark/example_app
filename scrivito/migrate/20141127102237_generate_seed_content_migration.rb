class GenerateSeedContentMigration < ::Scrivito::Migration
  def up
    homepage = create_homepage
    subpage_page = create_subpage_page
  end

  private

  def random_path_component
    SecureRandom.hex(16)
  end

  def create_image(file_name)
    file = File.new(Rails.root.join('lib/seed_data/', file_name))

    Image.create(blob: file, _path: "/_uploads/#{file_name}")
  end

  def create_homepage
    search_page = SearchResultsPage.create(
      _path: '/_global/search',
      title: 'Search Results',
    )

    homepage = Homepage.create(
      _path: '/',
      search_result_page: search_page,
      title: 'Your Example',
    )

    brandenburg_img = create_image('brandenburg_gate.jpg')

    siegessaeule_img = create_image('siegessaeule.jpg')

    homepage
  end



  def create_subpage_page
    reichstag_img = create_image('reichstag.jpg')

    Page.create(
      _path: "/unterseite",
      title: 'Unterseite'
    )
  end

  def texts
    @texts ||= YAML.load_file(Rails.root.join('lib/seed_data/texts.yml'))
  end
end
