class SeedCms
  class << self
    def call
      workspace = Scrivito::Workspace.create(title: 'Berlin Seed Content')
      Scrivito::Workspace.current = workspace

      homepage = update_homepage

      history_blog = create_history_blog
      create_founding_page(history_blog)
      create_berlin_wall_page(history_blog)
      create_reunification_page(history_blog)

      capital_city_page = create_capital_city_page

      homepage.update(child_order: [capital_city_page, history_blog])
    end

    private

    def random_path_component
      SecureRandom.hex(16)
    end

    def create_image(file_name)
      file = File.new(Rails.root.join('lib/seed_data/', file_name))
      path = "/#{random_path_component}/#{file_name}"

      Image.create(_path: path, blob: file)
    end

    def update_homepage
      homepage = Homepage.find_by_path('/')

      brandenburg_img = create_image('brandenburg_gate.jpg')

      siegessaeule_img = create_image('siegessaeule.jpg')


      inner_columns = TwoColumnWidget.new(
        column1_width: 6,
        column1_content: [TextWidget.new(content: berlin_introduction)],
        column2_content: [ImageWidget.new(source: siegessaeule_img)]
      )

      outer_columns = TwoColumnWidget.new(
        column1_width: 8,
        column1_content: [
          HeadlineWidget.new(headline: 'Berlin'),
          inner_columns
        ],
        column2_content: [
          HeadlineWidget.new(headline: 'Content'),
          TextWidget.new(content: content_disclaimer)
        ]
      )

      homepage.update(
        title: 'Berlin',
        main_content: [
          ImageWidget.new(source: brandenburg_img),
          outer_columns
        ]
      )

      homepage
    end

    def create_history_blog
      Blog.create(
        _path: "/#{random_path_component}",
        headline: 'History of Berlin',
        title: 'History Blog'
      )
    end

    def create_founding_page(blog)
      old_map_img = create_image('old_map.jpg')

      main_columns = TwoColumnWidget.new(
        column1_width: 8,
        column1_content: [
          HeadlineWidget.new(headline: 'Emerging city (1200-1400)'),
          TextWidget.new(content: founding_text)
        ],
        column2_content: [ImageWidget.new(source: old_map_img)]
      )

      BlogPost.create(
        _path: "#{blog.path}/#{random_path_component}",
        title: 'Founding',
        headline: 'The Founding of Berlin',
        published_at: Date.new(1237, 1, 1),
        author_name: 'wikipedia',
        main_content: [main_columns]
      )
    end

    def create_berlin_wall_page(blog)
      berlin_wall_img = create_image('berlin_wall.jpg')

      main_columns = TwoColumnWidget.new(
        column1_width: 4,
        column1_content: [ImageWidget.new(source: berlin_wall_img)],
        column2_content: [
          TextWidget.new(content: berlin_wall_text1),
          TextWidget.new(content: berlin_wall_text2)
        ]
      )

      BlogPost.create(
        _path: "#{blog.path}/#{random_path_component}",
        title: 'Berlin Wall Construction',
        headline: 'Construction of the Berlin Wall',
        published_at: Date.new(1961, 8, 13),
        author_name: 'wikipedia',
        main_content: [main_columns]
      )
    end

    def create_reunification_page(blog)
      reunification_img = create_image('reunification.jpg')

      main_columns = TwoColumnWidget.new(
        column1_width: 8,
        column1_content: [
          HeadlineWidget.new(headline: 'The Fall of the Berlin Wall'),
          TextWidget.new(content: reunification_text)
        ],
        column2_content: [ImageWidget.new(source: reunification_img)]
      )

      BlogPost.create(
        _path: "#{blog.path}/#{random_path_component}",
        title: 'Reunification',
        headline: 'Reunification of Berlin',
        published_at: Date.new(1989, 11, 9),
        author_name: 'wikipedia',
        main_content: [main_columns]
      )
    end

    def create_capital_city_page
      reichstag_img = create_image('reichstag.jpg')

      main_columns = TwoColumnWidget.new(
        column1_width: 5,
        column1_content: [
          HeadlineWidget.new(headline: 'Capital of Germany'),
          TextWidget.new(content: capital_city_text)
        ],
        column2_content: [ImageWidget.new(source: reichstag_img)]
      )

      Page.create(
        _path: "/#{random_path_component}",
        title: 'Capital City',
        main_content: [main_columns]
      )
    end

    def berlin_introduction
      "Berlin is the capital city of Germany and one of the 16 states of Germany. With a population of 3.5 million people, Berlin is Germany's largest city. It is the second most populous city proper and the seventh most populous urban area in the European Union. Located in northeastern Germany on the River Spree, it is the center of the Berlin-Brandenburg Metropolitan Region, which has about 4.5 million residents from over 180 nations. Due to its location in the European Plain, Berlin is influenced by a temperate seasonal climate. Around one third of the city's area is composed of forests, parks, gardens, rivers and lakes."
    end

    def content_disclaimer
      "All texts and images used in the sample content were taken from wikipedia.org mainly form the article on Berlin (http://en.wikipedia.org/wiki/Berlin). See the Readme of this repository for a detailed attribution of authors."
    end

    def founding_text
      "The original Slavic town of Berlin was on the eastern bank of the Spree, approximately where the Nikolaiviertel now stands (although the pseudo-mediaeval buildings there are postwar facsimiles). The first German settlers probably reached the area in the 11th or 12th centuries. They founded a second town, called Cölln, on the island in the Spree now known as the Spreeinsel or Museum Island. In the 12th century the area came under German rule as part of the Margraviate of Brandenburg, founded by Albert the Bear in 1157. It was under the Margraves of Brandenburg (who ruled from the town of Brandenburg an der Havel), that Old Berlin and Cölln received their first town charters in the 13th century. The year 1237 was later taken as the year of founding. As German settlement increased, the Slavic character of the town faded and the two settlements merged into the German town of Berlin-Cölln; they formally merged in 1432. Albert the Bear also bequeathed to Berlin the emblem of the bear, which has appeared on its coat of arms ever since. By the year 1400 Berlin and Cölln had 8,000 inhabitants. A great town center fire in 1380 damaged most written records of those early years, as well as the great devastation of the Thirty Years War 1618-1648."
    end

    def berlin_wall_text1
      "On August 13, 1961 the communist East German government started to build a wall, physically separating West Berlin from East Berlin and the rest of East Germany, as a response to massive numbers of East German citizens fleeing into West Berlin as a way to escape to the west. The wall was built overnight with no warning. This separated families for as long as the wall was up. The most that some families got was a wave. The East German government called the Wall the \"anti-fascist protection wall\". The tensions between east and west were exacerbated by a tank standoff at Checkpoint Charlie on 27 October 1961. West Berlin was now de facto a part of West Germany, but with a unique legal status, while East Berlin was de facto a part of East Germany."
    end

    def berlin_wall_text2
      "The eastern and western sectors of Berlin were now completely separated. It was possible for Westerners to pass from one to the other only through strictly controlled checkpoints. For most Easterners, travel to West Berlin or West Germany was no longer possible. During the Wall's existence there were around 5,000 successful escapes into West Berlin; 136 people were officially killed trying to cross (see Deaths at the Berlin Wall) and around 200 were seriously injured. The sandy soil under the Wall was both a blessing and a curse for those who attempted to tunnel their way to West Berlin and freedom. Although it was fast and easy to dig through, it was also more prone to collapse."
    end

    def reunification_text
      "<p>The Fall of the Berlin Wall in November 1989 marks the end of the Cold War. On 9 November 1989, border guards allowed crowds from East Berlin to cross the frontier at the Bösebrücke. The guards believed that the authorities had decided to open the wall, but in reality no firm decision was taken and events gathered steam on their own. People of East and West Berlin climbed up and danced on the wall at the Brandenburg Gate in scenes of wild celebration broadcast worldwide. This time no Soviet tanks rolled through Berlin. The wall never closed again, and was soon on its way to demolition, with countless Berliners and tourists wielding hammers and chisels to secure souvenir chunks.</p><p>On Christmas Day December 25, 1989, the American conductor Leonard Bernstein shared with East and West Berliners and the world his Berlin Celebration Concert in order to celebrate the Fall of the Berlin Wall. \"Ode to Joy\", which Bernstein had reworded \"Ode to Freedom\", was performed.</p><p>A performance of Pink Floyd's The Wall took place in Potsdamer Platz in 1990, led by former Pink Floyd member, Roger Waters.</p>"
    end

    def capital_city_text
      "Berlin is the capital of the Federal Republic of Germany. The President of Germany, whose functions are mainly ceremonial under the German constitution, has his official residence in Schloss Bellevue. Berlin is the seat of the German executive, housed in the Chancellery, the Bundeskanzleramt. Facing the Chancellery is the Bundestag, the German Parliament, housed in the renovated Reichstag building since the government moved back to Berlin in 1998. The Bundesrat (\"federal council\", performing the function of an upper house) is the representation of the Federal States (Bundesländer) of Germany and has its seat at the former Prussian House of Lords."
    end
  end
end
