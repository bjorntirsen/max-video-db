# Designen av min databas - för- och nackdelar med mina val
Av Björn Tirsén den 4:e februari 2021

## Stilregler:

- Väljer camelCase för alla tabellers "egna" kolumner i databasen. Främmande nycklar och namn på uppslagstabeller får snake_case för att illustrera att de har sitt ursprung i flera andra tabeller.
- Uppslagstabeller får "_has_" i sina namn.
- Databasens variabler, kod och kolumner på engelska men kolumnnamnen i vyerna på svenska.
- Väljer att ha tabellnamnen i singular då jag tycker det blir mer "semantiskt" när man kombinerar tabeller i uppslagstaveller som "rentalOccation_has_stockItem"

## Designval:

- Jag utgår ifrån IMDB:s sida när jag bestämmer vad filmerna ska ha för egenskaper.
- Tinytext för plot outline då max 255 tecken är lagom.
- Float(3) för imdbRating ifall någon skulle ha 10.0.
- Postnummer varchar(6) så man kan skriva mellanrum.
- Tel nummer varchar(10) så det kan börja med en nolla och får plats med alla svenska nummer.
- Valde att ha en "actorDirector"-tabell i stället för separat för skådisar och en för regissörer då samma person kan ha bägge yrken, ibland till och med i samma film.
- Om en kund hyr mer än en film vid samma tillfälle så får vaje film en engen rad i rentalLog.
- Väljer en uppslagstabell mellan filmer och genre då filmer kan tillhöra flera genrer samtidigt.

### Fråga 10:
- Efter en hel del experimenterande med olika typer av statistiktabeller på fråga 10 väljer jag en enkel design som skapar en ny rad för varje hyrtillfälle.
- Jag avrundar alla datum i denna statistik tabell till den 1:a dagen i månaden de hyrdes ut för att den ska bli lätt att använda för månadsstatistik.

## Fördelar med min design:

- Man kan lämna tillbaka filmer man hyrt samtidigt vid olika tidpunkter utan att det ställer till med några problem.
- För en "videobutiks" behov tycker jag att databasen har en rimlig nivå av komplexitet. Inte för komplex, inte för enkel.
- Jag tycker att mina tabell- och kolumnnamn är semantiska. Att man förstår på namnen vad de innehåller.

## Nackdelar:

- Man skulle kunna argumentera för att de två tabellerna rentalOccation och rentalOccation_has_stockItem hade kunnat kombineras i en tabell. Det hade blivit mindre normaliserat men lite enklare struktur.
- Man skulle kunna argumentera för att vissa tabell- och kolumnnamn är lite väl långa.