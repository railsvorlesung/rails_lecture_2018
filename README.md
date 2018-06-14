# README
https://twitter.com/railsvorlesung

htwrails2017@avarteq.de

paas.anynines.com

* 12.04
* 26.04
* 03.05 ! Geändert 10.05 ist Feiertag
* 24.05
* 14.06


# Literatur

* [RailsCasts - Lernvideos](http://railscasts.com/)
* [a fresh cup - RSS Feed über Webentwicklung](https://afreshcup.com/)
* [Rails Guides](http://guides.rubyonrails.org/getting_started.html)
* [Zeal - Offline API-Doc Browser](https://zealdocs.org/)
* [Reguläre Ausdrücke](http://rubular.com/)
* [API-Doc](apidock.com)
* [12 Factor Manifesto](https://12factor.net/de/)
* [API-Doc Suche für Gems](http://www.rubydoc.info/)

# CloudFoundry

* paas.anynines.com (Bei registrierung Email an die Vorlesungsadresse mit eurer Restrierungsemail, sodass wir die Trial verlängern können)

* https://github.com/cloudfoundry/cli


# Nützliche Gems

* paperclip
* devise
 * omniauth

* envyable (ENV-Variablen lokal konfigurieren)
* active_admin 
* prawn (PDF Generierung)
* holidays (Feiertage erkennen)
* icalendar (ical-Format Generierung)

## Übesetzungen

* devise-i18n
* rails-i18n

# Javascript Libraries

* jFlot (Chart Plotting)
* simple-mds (https://github.com/sparksuite/simplemde-markdown-editor)


# Auto-Migration

initializer anlegen mit:

```require 'rake'
Rails.application.load_tasks
Rake::Task['db:migrate'].invoke
```

# Anforderungen an das Projekt

* Verwendung von Git auf Github.com
* Ruby und Ruby on Rails Konventionen inkl. Namenskonventionen sind einzuhalten
* Deployment auf anynines.com
* Dateiupload: Amazon S3
* File-Upload
 * Paperclip, CarrierWave, ActiveStorage
* Assoziationen
 * 1:1
 * 1:n
 * m:n
* Verwendung eines Custom-Mailers
 * Verwendung des letter opener gems bei der lokalen Entwicklung (nicht ohne PW in production)
* Devise-Authentifizierung mit opt-in (Bestätigung der E-Mail Adresse)
 * Omniauth pur auch okay
* Layout basierend auf Twitter-Bootstrap und verwendet die Bootstrap-Elemente wie vom Framework vorgesehen
 * boostrap-sass gem (alternativ twitter-bootstrap-rails, bootstrap-sass aber bevorzugt)
* Alle Tests laufen durch (rake test / rspec spec)
