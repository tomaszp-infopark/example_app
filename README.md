# Scrivito Example App

## Configuration
All you need to is create a new file `.env` located in the root of your rails app with the following content:

```
SCRIVITO_TENANT=<your-tenant-name>
SCRIVITO_API_KEY=<your-api-key>
```

You can just copy these settings from your dashboard at www.scrivito.com.

To add the structure the app excepts into your CMS you have to run the migrations of the add using the following commands:

```
bundle exec rake cms:migrate
bundle exec rake cms:migrate:publish
```

This will setup the cms to be used by the CMS and allows you to start editing right away. If you want to you can add your own content to the CMS, however if you want more of a head start we included some pages you can add to the cms using the following command:

```
bundle exec rake seed_cms
```

## Example Content

The example content was taken from wikipedia from the articles: http://en.wikipedia.org/wiki/Berlin and 



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
