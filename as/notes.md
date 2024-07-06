# notes

alles ausser concurrency models kann drankommen!!

## general strategy

- durch alle seiten einmal durch gehen
- dabei notizen machen
- versuchen zu verstehen

## 1. overview

### fokus:

- nebenlaeufigkeit (concurrency)
- kanal-basierte kommunikation

### go keyword:

- goroutine (ein leichtgewichtiger thread) wird gestartet
- erlaubt concurrency
- führt nachfolgende funktion asynchron aus

### deadlock

- programm kann nicht weiter ausgeführt werden,
  da ein thread auf etwas wartet, was nicht kommt (thead ist blockiert)

- z.b. 2 threads kriegen einen lock und koennen nicht mehr fortfahren weil sie auf den lock des anderen warten

### data race

- z.b. 2 threads wollen auf die selbe ressource zugreifen (min. einer schreibend) -> konsistenz nicht gewaehrleistet

## 2. go intro

### semaphore

- datenstruktur, die mehreren threads zugriffe auf ressourcen gewaehren kann durch einen zaehler

### mutex

- datenstruktur, die zugriffe auf ressourcen gewaehren kann

## kanal mit puffer

- senden:
  - blockiert nicht falls noch platz im puffer
- empfangen:
  - wartet bis element im puffer verfuegbar
  - falls element im puffer wird es entfernt
