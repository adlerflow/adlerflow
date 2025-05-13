# Adlerflow 📚

> **⚠️ HINWEIS: PROJEKT IN ENTWICKLUNG**  
> Diese Software befindet sich derzeit in aktiver Entwicklung und ist noch nicht funktionsbereit. Features und Dokumentation werden sich in den kommenden Updates ändern.

Adlerflow ist ein macOS-Server, der Claude Desktop Zugriff auf lokale Dokumente ermöglicht. Die Anwendung fungiert als Brücke zwischen KI-Assistenten und deiner Dokumentenbibliothek, wodurch Claude eigenständig auf relevante wissenschaftliche Artikel zugreifen kann.

## 🌟 Hauptfunktionen

- Lokaler Dokumentenserver für Claude Desktop
- Unterstützung für PDF-Dokumente (wissenschaftliche Artikel)
- Mehrsprachige Dokumentenverwaltung (Deutsch und Englisch)
- Intelligente Ressourcenauswahl durch Claude selbst
- Sichere lokale Verarbeitung ohne Cloud-Upload

## 🚀 Installation

### Voraussetzungen
- macOS 14.0+ (Sequoia)
- Xcode 16.3+
- Claude Desktop Anwendung
- Claude Pro

### Einrichtung
1. Repository klonen:
   git clone https://github.com/adlerflow/adlerflow.git
   cd adlerflow
2. Projekt in Xcode öffnen:
   open adlerflow.xcodeproj
3. Anwendung kompilieren und starten (⌘+R)

## 🔧 Konfiguration
1. Dokumentenordner festlegen
- Starte Adlerflow
- Gehe zu Einstellungen → Dokumentenordner
- Wähle den Ordner, der deine wissenschaftlichen Artikel enthält

2. Verbindung mit Claude Desktop
- Adlerflow generiert automatisch einen lokalen API-Endpunkt
- Kopiere die angezeigte URL in Claude Desktop unter Einstellungen → Erweiterungen → Lokaler Server

## 📖 Verwendung
1. Starte den Adlerflow-Server
2. Öffne Claude Desktop
3. Stelle eine Frage, die Recherche in deinen Dokumenten erfordert
4. Claude wird automatisch auf relevante PDFs zugreifen und Quellen zitieren

## 🔍 Wie es funktioniert

Adlerflow erstellt einen lokalen Server, der Anfragen von Claude Desktop verarbeitet. Wenn Claude Informationen benötigt, kann es selbständig durch die API relevante Dokumente anfordern, durchsuchen und die Ergebnisse in seine Antworten integrieren.

## 🛠 Technologien
- Swift und SwiftUI für die Benutzeroberfläche
- SwiftData für die Dokumentenverwaltung
- Lokaler REST-API-Server für die Claude-Integration

## 🤝 Mitwirken
Beiträge sind willkommen! Wenn du Verbesserungen vorschlagen möchtest, einfach eine Pull Request erstellen.

## 📄 Lizenz
Dieses Projekt ist unter der MIT-Lizenz lizenziert. Weitere Informationen findest du in der LICENSE-Datei.

## 📞 Kontakt
Bei Fragen oder Anregungen kannst du gerne ein Issue eröffnen oder mich direkt kontaktieren.

Entwickelt mit ❤️ für die Verbesserung von KI-Assistenten durch Zugriff auf lokale Fachliteratur



