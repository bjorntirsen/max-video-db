Inlämningsuppgift 1 - MySQL

Max har köpt en konkursdrabbad DVD-uthyrningsbutik. Hans affärsidé är att bygga en Netflix-konkurrent som hyr ut fysiska skivor. Besökaren går in på max-filmer.se och kan där chatta med en anställd, som kan se besökarens filmhistorik och ge personliga rekommendationer. Max skickar sedan ut skivan och besökaren skickar tillbaka den senast fyra dagar senare. Du ska göra en databas åt Max firma. Databasen ska kunna hålla reda på

Filmer

Data om filmen, inklusive skådespelare, regissör, utgivningsår, genre

Kunder

Anställda

Du får skapa de tabeller du behöver för att kunna lösa uppgiften. Du ska skapa vyer som låter videofirman se följande:

Vilka filmer som firman äger, inklusive data om filmen.

Vilka filmer som finns i en viss genre.

Vilka filmer som är uthyrda, vem som hyrde dem (kund) och vem som hyrde ut dem (anställd).

Vilka filmer som har gått över tiden, dvs filmer som inte har blivit återlämnade trots att de borde vara det, tillsammans med namnet på kunden som har hyrt den.

En lista över alla anställda och hur många filmer varje anställd har hyrt ut.

En lista med statistik över de mest uthyrda filmerna den senaste månaden. Se fråga 10.

En Stored Procedure som ska köras när en film lämnas ut. Ska alltså sätta filmen till uthyrd, vem som hyrt den osv.

Gör en funktion som tar en film som parameter och returnerar olika värden beroende på om filmen är sent inlämnad eller inte. Dvs, om du matar in film nr 345 ska du få tillbaka TRUE om filmen är uthyrd men borde vara tillbakalämnad, annars FALSE. (1 och 0 funkar också om det är lättare.)

En Stored Procedure som ska köras när en film lämnas tillbaka. Den ska använda sig av ovanstående funktion för att göra någon form av markering/utskrift om filmen är återlämnad för sent.

Du ska underhålla en statistiktabell med hjälp av triggers. När du lämnar ut en fil ska det göras en notering om det i din statistiktabell. Du får inte lägga till informationen från din SP ovan, det ska skötas med triggers.

Betygskriterier
Nivå G
Lös minst 6 av frågorna varav minst en inkluderar en Stored Procedure.

Tabellerna ska vara normaliserade.

Ha lämnat in i tid.

Nivå VG
Allt för G.

Lös minst 9 av frågorna.

Skriv om fördelar och nackdelar med din design. Du ska kunna motivera dina val. Text-fil, möjligen Word-dokument eller liknande.

Ta hänsyn till att man kan ha flera av varje film, t ex 10 ex av Saving Private Ryan.

Du kan bara få VG i första inlämningen, dvs i en restinlämning kan du bara få G.

Redovisning
Redovisa med en sql-fil som skapar databasen, tabellerna, vyer, stored procedures osv och all data. Databasen ska innehålla tillräckligt med data för att kunna testa vyerna ovan, minst 10 personer, 10 filmer osv.

Döp databasen till ditt förnamn och en bokstav från ditt efternamn, t ex MikaelO. Det är viktigt! Det är jättebökigt att försöka hålla koll på 30 databaser som alla heter Movies. Om din databas inte följer denna regel kommer jag inte att rätta ditt projekt.

Innehållet i din inlämning ska se ut såhär:

database.sql - Filen som skapar databasen, tabellerna etc.
queries.sql - Den här filen ska innehålla sql:en jag ska köra för att se resultatet från dina lösningar. Om du t ex har en vy som heter vw_movies på fråga 1, så ska din fil se ut såhär:
1.

SELECT * FROM vw_movies;

2.
SELECT something FROM somewhere;
osv.
Du ska även inkludera en text-fil eller liknande om du siktar på VG i enlighet med betygskriterierna ovan.