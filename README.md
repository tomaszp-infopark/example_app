# Scrivito Example App

## Configuration

All you need is to create a new file named `.env` located in the root of your
rails app and add the following content to it:

```
SCRIVITO_TENANT=<your-tenant-name>
SCRIVITO_API_KEY=<your-api-key>
```

You can just copy these settings from your dashboard at www.scrivito.com/dashboard.

The app expects a specific content structure in the CMS. This structure is
created using migrations, similar to the ActiveRecord migrations that create
database tables. You can execute the migrations using this command:

```
bundle exec rake scrivito:migrate scrivito:migrate:publish
```

This will set up the content to be used by the CMS and allows you to start
editing right away. You can add your own content to the CMS, however if you
want more of a head start, we included a small set of pages for you to get
going. You can add this content by running:

```
bundle exec rake seed_cms
```

Please note that the content will not be available in the published workspace
after calling the `rake` task. You can find it in its own workspace called
"Berlin Seed Content" and need to switch to this workspace before being able
to see it.

## Example Content

The example text content was taken from the wikipedia articles:
[Berlin](http://en.wikipedia.org/wiki/Berlin) and 
[History of Berlin](http://en.wikipedia.org/wiki/History_of_Berlin).

Additionally, the following pictures were used:

- `lib/seed_data/brandenburg_gate.jpg`
"Brandenburg Gate panorama at night" by Runner1928 - Own work. Licensed under Creative Commons Attribution-Share Alike 3.0 via Wikimedia Commons - [See](http://commons.wikimedia.org/wiki/File:Brandenburg_Gate_panorama_at_night.jpg#mediaviewer/File:Brandenburg_Gate_panorama_at_night.jpg)

- `lib/seed_data/siegessaeule.jpg`
"Siegessaeule Aussicht 10-13 img4 Tiergarten" by A.Savin - Own work. Licensed under Creative Commons Attribution-Share Alike 3.0-2.5-2.0-1.0 via Wikimedia Commons - [See](http://commons.wikimedia.org/wiki/File:Siegessaeule_Aussicht_10-13_img4_Tiergarten.jpg#mediaviewer/File:Siegessaeule_Aussicht_10-13_img4_Tiergarten.jpg)

- `lib/seed_data/old_map.jpg`
"ZLB-Berliner Ansichten-Januar" by J. M. F. Schmidt - Scanned by the Zentral- und Landesbibliothek Berlin (ZLB). Licensed under Public domain via Wikimedia Commons - [See](http://commons.wikimedia.org/wiki/File:ZLB-Berliner_Ansichten-Januar.jpg#mediaviewer/File:ZLB-Berliner_Ansichten-Januar.jpg)

- `lib/seed_data/berlin_wall.jpg`
"Berlin Wall 1961-11-20" by National Archives - http://web.archive.org/web/20050206035542/http://nsarchive.chadwyck.com/bcphotox.htm. Licensed under Public domain via Wikimedia Commons - [See](http://commons.wikimedia.org/wiki/File:Berlin_Wall_1961-11-20.jpg#mediaviewer/File:Berlin_Wall_1961-11-20.jpg)

- `lib/seed_data/reunification.jpg`
"Thefalloftheberlinwall1989" by Unknown photographer, Reproduction by Lear 21 - Original photo by unknown author. Reproduction from public documentation/memorial by Lear 21. Licensed under Creative Commons Attribution-Share Alike 3.0 via Wikimedia Commons - [See](http://commons.wikimedia.org/wiki/File:Thefalloftheberlinwall1989.JPG#mediaviewer/File:Thefalloftheberlinwall1989.JPG)

- `lib/seed_data/reichstag.jpg`
"Berlin Reichstag 01" by Mihael Grmek - Own work. Licensed under Creative Commons Attribution-Share Alike 3.0 via Wikimedia Commons - [See](http://commons.wikimedia.org/wiki/File:Berlin_Reichstag_01.jpg#mediaviewer/File:Berlin_Reichstag_01.jpg)
