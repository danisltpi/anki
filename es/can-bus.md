# es::can-bus

## was ist ein can bus?

- standard in der fahrzeugtechnik
- kommunikation zwischen elektr. steuergeraeten

## merkmale can-bus

- dezentral (multi-master-prinzip)
- fehlertolerant, aber keine fehlerkorrektur
  - bit stuffing
  - crc
- prioritaeten der nachrichten
  - bei kollision

## can-bus-frame aufbau

- start of frame (SOF)

  - 1 bit
  - dominantes bit (logische 0), welches beginn des frames markiert

- arbitration field

  - identifier
    - 11 bit
    - bestimmt prio
  - rtr (remote transmission request)
    - 1 bit
    - unterscheidet daten-frames (rtr=0) und remote-frames (rtr=1)

- control field

  - 6 bit
  - ide: 1 bit (gibt an ob frame ein standard oder extenden identifier benutzt)
  - delimiter
  - 4 bit data length (anzahl daten bytes 0..8)

- data

  - 0..64 bit

- crc

  - 15 bit
  - 1 bit crc delimiter
  - zur fehlererkennung

- ack field

  - 1 bit
  - 1 bit ack delimiter
  - sender setzt es rezessiv, und empfaenger die das frame korrekt empfangen haben setzen es auf dominant

- eof (end of frame)

  - 7 rezessive bits
  - markiert das ende des frames

- interframe space
  - separiert 2 frames
  - mindestens 3 rezessive bit
  - beliebig viele rezessive bits können folgen

can frame zusammenfassung

- 1 bit sof -> dominant
- 11 bit identifier -> zur arbitrierung
- 1 rtr -> dominant (data frame) / rezessiv (remote frame)
- 6 bit control field
  - 1 bit ide -> dominant falls standard identifier
  - 1 bit delimiter
  - 4 bit dlc -> gibt 0..8 bytes daten an
- 15 bit crc -> zur fehlererkennung
- 1 bit delimiter -> rezessiv
- 1 bit ack -> sender sendet es rezessiv, empfänger setzt es dominant
- 1 bit delimiter -> rezessiv
- 7 bit eof field -> rezessiv
- 3 bit interframe space -> rezessiv

## wieso dominante und rezessive bits?

- da verundung mit dominanten bits wieder das dominante ergibt
  - 0 & 0 -> 0
  - 0 & 1 -> 0
  - 1 & 0 -> 0
- dominante bits haben vorrang und überschreiben rezessive bits

## bit stuffing

- nach 5 aufeinander folgenden gleichen bits wird ein bit entgegengesetzter polaritaet eingefuegt
- stellt sicher das genuegen signal uebergange vorhanden sind um synchronisation aufrecht zu erhalten
