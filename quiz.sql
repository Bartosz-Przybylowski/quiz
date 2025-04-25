-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 03:29 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poziom_latwy`
--

CREATE TABLE `poziom_latwy` (
  `id` int(11) NOT NULL,
  `pytanie` varchar(255) NOT NULL,
  `odpowiedz1` varchar(255) NOT NULL,
  `odpowiedz2` varchar(255) NOT NULL,
  `odpowiedz3` varchar(255) NOT NULL,
  `odpowiedz4` varchar(255) NOT NULL,
  `poprawna_odpowiedz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poziom_latwy`
--

INSERT INTO `poziom_latwy` (`id`, `pytanie`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `poprawna_odpowiedz`) VALUES
(1, 'Co oznacza PHP?', 'Personal Home Page', 'Programming Hypertext Processor', 'Practical Hypertext Programming', 'Pretty Hypertext Protocol', 2),
(2, 'Jakie polecenie służy do połączenia z bazą danych MySQL w PHP?', 'db_connect()', 'connect_db()', 'mysqli_connect()', 'mysql_connect()', 3),
(3, 'Jaki jest domyślny port dla MySQL?', '3306', '5432', '1521', '8080', 1),
(4, 'Jak zadeklarować zmienną w PHP?', 'variable $zmienna', 'declare $zmienna', '$zmienna', 'var $zmienna', 3),
(5, 'Jakie jest rozszerzenie pliku dla skryptów PHP?', '.sql', '.txt', '.php', '.html', 3),
(6, 'Jakie polecenie służy do wyświetlenia tekstu w PHP?', 'display', 'show', 'echo', 'print', 3),
(7, 'Jakie jest domyślne zachowanie zmiennej w PHP?', 'stałe', 'zmienne', 'lokalne', 'globalne', 2),
(8, 'Jakie jest znaczenie znaku „$” w PHP?', 'oznacza funkcję', 'oznacza tablicę', 'oznacza zmienną', 'oznacza stałą', 3),
(9, 'Jakie jest polecenie do zakończenia skryptu PHP?', 'break', 'end', 'exit', 'stop', 3),
(10, 'Jakie jest znaczenie funkcji `isset()`?', 'sprawdza, czy zmienna jest liczbą', 'sprawdza, czy zmienna jest tablicą', 'sprawdza, czy zmienna jest ustawiona', 'sprawdza, czy zmienna jest pusta', 3),
(11, 'Jakie jest polecenie do dodania komentarza w PHP?', '/* komentarz */', '// komentarz', '# komentarz', 'wszystkie powyższe', 4),
(12, 'Jakie jest polecenie do usunięcia zmiennej w PHP?', 'delete()', 'clear()', 'unset()', 'remove()', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poziom_sredni`
--

CREATE TABLE `poziom_sredni` (
  `id` int(11) NOT NULL,
  `pytanie` varchar(255) NOT NULL,
  `odpowiedz1` varchar(255) NOT NULL,
  `odpowiedz2` varchar(255) NOT NULL,
  `odpowiedz3` varchar(255) NOT NULL,
  `odpowiedz4` varchar(255) NOT NULL,
  `poprawna_odpowiedz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poziom_sredni`
--

INSERT INTO `poziom_sredni` (`id`, `pytanie`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `poprawna_odpowiedz`) VALUES
(1, 'Jakie jest zadanie funkcji `mysqli_query()`?', 'Wykonanie\r\nzapytania SQL', 'Zamknięcie połączenia z bazą danych', 'Pobranie danych z\r\nbazy', 'Utworzenie bazy danych', 1),
(2, 'Jak można pobrać dane z bazy danych MySQL w PHP?', 'Używając `mysqli_insert()`', 'Używając `mysqli_update()`', 'Używając\r\n`mysqli_fetch_array()`', 'Używając `mysqli_delete()`', 3),
(3, 'Co to jest klucz główny w bazie danych?', 'Referencja do klucza obcego', 'Typ indeksu', 'Unikalny\r\nidentyfikator rekordu', 'Typ\r\ndanych', 3),
(4, 'Jakie polecenie służy do aktualizacji danych w bazie\r\ndanych?', 'MODIFY', 'CHANGE', 'SET', 'UPDATE', 4),
(5, 'Jakie jest znaczenie `JOIN` w SQL?', 'Usuwa dane z tabeli', 'Łączy dane z dwóch\r\ntabel', 'Tworzy nową tabelę', 'Aktualizuje dane w\r\ntabeli', 2),
(6, 'Jakie jest polecenie do usunięcia tabeli w SQL?', 'DELETE TABLE', 'REMOVE TABLE', 'CLEAR TABLE', 'DROP\r\nTABLE', 4),
(7, 'Jakie jest znaczenie `GROUP BY` w SQL?', 'Sortuje wyniki\r\nzapytania', 'Filtruje wyniki zapytania', 'Łączy\r\nwyniki zapytania', 'Grupuje wyniki\r\nzapytania', 4),
(8, 'Jakie jest znaczenie `FOREIGN KEY` w bazie danych?', 'Jest to klucz unikalny', 'Odnosi się do klucza głównego innej tabeli', 'Jest\r\nto indeks', 'Jest to typ danych', 2),
(9, 'Co to jest transakcja w SQL?', 'Zbiór operacji, które są\r\nwykonywane jako jedna całość', 'Operacja na pojedynczym rekordzie', 'Zbiór\r\nzapytań do bazy danych', 'Operacja na tabeli', 1),
(10, 'Jakie jest polecenie do tworzenia nowej tabeli w SQL?', 'NEW TABLE', 'ADD\r\nTABLE', 'CREATE TABLE', 'MAKE TABLE', 3),
(11, 'Jakie jest znaczenie `HAVING` w SQL?', 'Sortuje wyniki zapytania', 'Łączy wyniki zapytania', 'Usuwa dane\r\nz tabeli', 'Filtruje wyniki po\r\ngrupowaniu', 4),
(12, 'Jakie jest znaczenie `NULL` w bazach danych?', 'Reprezentuje wartość zero', 'Reprezentuje pusty\r\nciąg', 'Reprezentuje wartość domyślną', 'Reprezentuje brak wartości', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poziom_trudny`
--

CREATE TABLE `poziom_trudny` (
  `id` int(11) NOT NULL,
  `pytanie` varchar(255) NOT NULL,
  `odpowiedz1` varchar(255) NOT NULL,
  `odpowiedz2` varchar(255) NOT NULL,
  `odpowiedz3` varchar(255) NOT NULL,
  `odpowiedz4` varchar(255) NOT NULL,
  `poprawna_odpowiedz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poziom_trudny`
--

INSERT INTO `poziom_trudny` (`id`, `pytanie`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `poprawna_odpowiedz`) VALUES
(1, 'Co to jest normalizacja w bazach danych?', 'Proces organizacji\r\ndanych w celu minimalizacji redundancji', 'Proces szyfrowania danych', 'Proces tworzenia kopii zapasowych\r\ndanych', 'Proces usuwania danych', 1),
(2, 'Jakie są różnice między `INNER JOIN` a `OUTER JOIN`?', 'OUTER JOIN jest szybszy niż INNER JOIN', 'Nie ma różnicy', 'INNER JOIN zwraca tylko pasujące wiersze, OUTER JOIN zwraca wszystkie', 'INNER JOIN nie może być\r\nużywany w podzapytaniach', 3),
(3, 'Co to jest indeks w bazie danych?', 'Struktura danych,\r\nktóra przyspiesza wyszukiwanie', 'Klucz główny', 'Tabela\r\npomocnicza', 'Typ danych', 1),
(4, 'Jakie są różne typy relacji w bazach danych?', 'Tylko\r\njeden do wielu', 'Tylko wiele do wielu', 'Jeden do\r\njednego, jeden do wielu, wiele do wielu', 'Tylko jeden do jednego', 3),
(5, 'Co to jest widok w SQL?', 'Fizyczna tabela w bazie danych', 'Wirtualna tabela oparta na\r\nwynikach zapytania', 'Procedura\r\nskładowana', 'Indeks', 2),
(6, 'Jakie jest znaczenie `ACID` w kontekście baz danych?', 'Typ indeksu', 'Zasady zapewniające niezawodność transakcji', 'Typ danych', 'Rodzaj\r\nzapytania', 2),
(7, 'Jakie są różnice między `SQL` a `NoSQL`?', 'NoSQL nie obsługuje\r\nzapytań', 'Nie ma różnicy', 'SQL jest szybszy', 'SQL jest\r\nrelacyjnym, NoSQL jest nierelacyjnym', 4),
(8, 'Co to jest replikacja w bazach danych?', 'Proces\r\nkopiowania danych z jednej bazy do drugiej', 'Proces szyfrowania danych', 'Proces usuwania danych', 'Proces tworzenia kopii\r\nzapasowych', 1),
(9, 'Co to jest\r\nautoloader w PHP i jakie korzyści niesie jego stosowanie?', 'Mechanizm\r\nautomatycznego ładowania klas i interfejsów, eliminuje potrzebę ręcznego\r\ndołączania plików', 'Wbudowany system\r\nszablonów PHP', 'Funkcja do automatycznego tworzenia kopii zapasowych\r\nkodu', 'Narzędzie do optymalizacji zapytań SQL w PHP', 1),
(10, 'Wyjaśnij różnicę między `==` a `===` w PHP.', '`===` jest\r\nszybsze niż `==`', '`==` służy do przypisywania\r\nwartości, a `===` do porównywania', '`==`\r\nporównuje wartości, `===` porównuje wartości i typy danych', 'Nie ma różnicy między nimi', 3),
(11, 'Czym są przestrzenie nazw (namespaces) w PHP i dlaczego są\r\nużyteczne?', 'Specjalny typ zmiennej\r\nprzechowujący wiele wartości', 'Mechanizm izolujący kod w różnych \"kontenerach\",\r\nzapobiegając konfliktom nazw klas i funkcji', 'Dyrektywa konfiguracyjna serwera PHP', 'Funkcja do dynamicznego tworzenia klas', 2),
(12, 'Opisz mechanizm działania sesji w PHP. Jakie są\r\nnajczęstsze metody przechowywania danych sesji?', 'Wbudowany system logowania użytkowników', 'Mechanizm pozwalający na\r\nutrwalanie informacji o użytkowniku między żądaniami, najczęściej przez pliki\r\nna serwerze lub bazę danych', 'Funkcja do szyfrowania danych przesyłanych\r\nmiędzy przeglądarką a serwerem', 'Metoda na optymalizację czasu ładowania\r\nstrony', 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `poziom_latwy`
--
ALTER TABLE `poziom_latwy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `poziom_sredni`
--
ALTER TABLE `poziom_sredni`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `poziom_trudny`
--
ALTER TABLE `poziom_trudny`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poziom_latwy`
--
ALTER TABLE `poziom_latwy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `poziom_sredni`
--
ALTER TABLE `poziom_sredni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `poziom_trudny`
--
ALTER TABLE `poziom_trudny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
