# F1-SQL-baza-danych (PostgreSQL)

## Opis
Projekt przygotowałem w ramach nauki i testowania SQL.
Baza danych **Formuły 1** zawiera podstawowe tabele: kierowcy, zespoły, tory, sezony, wyścigi i wyniki.  
Dodałem przykładowe dane oraz kilka zapytań, które pozwalają przeanalizować wyniki kierowców.

## Funkcje
- Schemat bazy danych (tabele z kluczami głównymi i obcymi). 
- Plik z danymi testowymi (INSERT). 
- Przykładowe zapytania SQL (`JOIN`, `GROUP BY`, `AVG`). 

## Jak uruchomić
1. Utwórz bazę:
   ```bash
   createdb f1_db
2. Załaduj schemat i dane:
psql -d f1_db -f schemat.sql
psql -d f1_db -f seed.sql
3. Uruchom przykładowe zapytania:
psql -d f1_db -f zapytania.sql

## Czego się nauczyłem
- Definiowania tabel i relacji w PostgreSQL.
- Wstawiania danych testowych (INSERT).
- Tworzenia zapytań z JOIN i GROUP BY.
- Obliczania liczby zwycięstw kierowców i średnich pozycji w wyścigach.

## Technologie
PostgreSQL, SQL (DDL i DML)

## Autor
Konrad Cieślak – student informatyki (III semestr)
