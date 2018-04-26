# README
https://twitter.com/railsvorlesung

htwrails2017@avarteq.de


paas.anynines.com

12.04
26.04
03.05 ! Geändert 10.05 ist Feiertag
24.05
14.06


# Anforderugnen an das Projekt

* Verwendung von Git auf Github.com
* Ruby und Ruby on Rails Konventionen inkl. Namenskonventionen sind einzuhalten
* Deployment auf anynines.com
* Dateiupload: Amazon S3
* File-Upload
** Paperclip, CarrierWave, ActiveStorage
* Assoziationen
** 1:1
** 1:n
** m:n
* Verwendung eines Custom-Mailers
** Verwendung des letter opener gems bei der lokalen Entwicklung (nicht in production)
* Devise-Authentifizierung mit opt-in (Bestätigung der E-Mail Adresse)
** Omniauth pur auch okay
* Layout basierend auf Twitter-Bootstrap und verwendet die Bootstrap-Elemente wie vom Framework vorgesehen
** boostrap-sass gem (alternativ twitter-bootstrap-rails, bootstrap-sass aber bevorzugt)
* Alle Tests laufen durch (rake test / rspec spec)
