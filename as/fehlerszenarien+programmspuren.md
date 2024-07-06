# as::fehlerszenarien+programmspuren

## deadlock

- Eine Deadlock tritt ein falls alle Threads blockiert sind
- oder main thread nicht terminiert
- wird von go erkannt und das programm bricht dann ab

## trace notation: kanal will empfangen

ch?

## trace notation: kanal will senden

ch!

## welche ereignisse sind blockierend

- empfangen ist blockierend im allgemeinen
- senden ist blockierend, wenn der puffer voll ist oder wenn ein nicht gepufferter kanal verwendet wird

## pre(ch?)

wollen empfangen via Kanal ch

## post(ch?)

haben empfangen via Kanal ch

## pre(ch!)

wollen senden via Kanal ch

## post(ch!)

hat gesendet via Kanal ch

## welche instrumentierungsansätze gibt es?

- instrumentierung des laufzeitsystems
- instrumentierung des generierten programmcodes (LLVM ebene)

## starvation

- wenn z.b. von drei threads immer nur 2 gegenseitig kommunizieren und der andere thread (third wheel) quasi verhungert
- ein thread muss unendlich lang auf ressource warten

## livelock

- mindestens ein thread nicht blockiert aber kein thread erzielt fortschritt

## data race

- wenn 2 speicheroperationen gleichzeitig statt finden
