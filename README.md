# Betriebshandbuch


## Wofür ist es gedacht
Ein Betriebshandbuch dient dazu die aktuelle IT Struktur der Firma bzw der Kunden abzubilden.
In vielen Fällen werden hierfür Wikis oder Textdokumente verwendet, was unter anderem den Nachteil hat, das die Dokumentationen nicht einheitlich sind.
Gleichzeitig bietet die Art der Dokumention keine Art von Verkünpfungen bzw in Teilen eine automatische Pflege.
Das Betriebshandbuch soll dazu dienen, die Struktur der Dokumentation zu vereinheitlichen und in späterer Entwicklung in Teilen zu automatisieren.

#### Installation
Zunächst das Repository auschecken
bundle install
yarn install --check-files

Im Anschluss die Datenbank anlegen
rake db:create
rake db:migrate
rake db:seed (Anlegen des admin Benutzers mit dem Kennwort admin)


#### Nach der Installation

Zu Beginn stehen dem Benutzer folgende Administrative Optionen zur Verfügung

##### Benutzer
Anlegen von neuen Benutzern mit drei verschiedenen Rechten.
Recht 1 : Anlegen von Benutzer, Kunden, Fachgruppen etc
Recht 2 : Hinterlegen von Kundenapplikationen inkl aller benötigten Inhalte
Recht 3 : Lesender Zugriff

##### Fachgruppen
Anlegen von internen Fachgruppen die bei Applikationen in der Supportmatrix hinterlegt werden können.

##### Monitoring
Welche generellen Monitoring Checks gibt es, die für alle Server / Komponenten verwendet werden können. Zum Beispiel check_http;Url;Port
prüft per http Check die angegebene url und den Port auf Erreichbarkeit

##### Hardwaretyp
Welche Hardware kann später bei den Servern hinterlegt werden, zum Beispiel Festplatte, CPU etc.

##### Betriebssystemtyp
Welche Betriebssystem Arten wie Linux, Windows, Freeos werden eingesetzt

##### Betriebssystem
Festlegen der Betriebssysteme, diese Auswahl steht bei Anlage und Bearbeitung von Servern zur Verfügung.

##### Kunden
Anlage und Verwaltung von neuen Kunden.


Unter jedem Kunden können die jeweiligen Applikationen, Server, Staging Stufen(PROD,TEST),Technische Benutzer  und Dienstleister angelegt werden. Letzteres muss unter jedem Kunden angelegt werden, da es gegebenenfalls andere Ansprechpartner, Servicenummern oder Servicezeiten gibt.

##### Beispielbilder
![Beschreibung](http://www.itbasic.de/wp-content/uploads/2021/05/bfh-1-e1621366865753.png)

![Staging Stufe](http://www.itbasic.de/wp-content/uploads/2021/05/bfh-2-e1621366890179.png)

![Technische Benutzer](http://www.itbasic.de/wp-content/uploads/2021/05/bfh-3-e1621366880562.png)



###### Änderungen

20.05.2021 Geplante Aufgaben können in der Applikation hinterlegt werden.

