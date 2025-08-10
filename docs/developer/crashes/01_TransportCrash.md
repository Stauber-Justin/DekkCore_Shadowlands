# Transport Crash at Load Transports

## Zusammenfassung
Beim Starten des Worldservers kam es zu einem Absturz während des Ladevorgangs der Transports.

## Ursache
Ein Transport-Template verwies auf eine Taxi-Path-ID ohne zugehörige Knoten im `taxipathnode`-Table. Dadurch war die Knotenliste leer und der Worldserver versuchte dennoch auf `path[0]` zuzugreifen, was einen Zugriff auf eine Nulladresse (Access Violation) auslöste.

## Fix
Vor dem Generieren des Transport-Pfads wird nun geprüft, ob die zugehörige Taxi-Path-Knotenliste leer ist. Falls keine Daten vorhanden sind, wird der Transport übersprungen und ein Fehler geloggt.
