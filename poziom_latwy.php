<?php
session_start();

// Połączenie z bazą danych MySQL
$polaczenie = mysqli_connect("localhost", "root", "", "quiz");

// Sprawdzenie, czy połączenie się udało
if ($polaczenie->connect_error) {
    die("Błąd połączenia z bazą danych: " . $polaczenie->connect_error);
}

// Inicjalizacja zmiennych
$pytania = []; // Tablica przechowująca pytania z bazy danych
$wynik = 0; // Zmienna przechowująca wynik quizu
$pokaz_wynik = false; // Flaga kontrolująca, czy wyświetlić wynik

// Pobranie pytań z bazy danych z tabeli 'poziom_latwy'
$rezultat = $polaczenie->query("SELECT * FROM poziom_latwy");

// Sprawdzenie, czy zapytanie zwróciło jakieś wyniki
if ($rezultat) {
    $pytania = []; // Resetowanie tablicy pytań
    // Pętla przechodząca przez każdy wiersz (pytanie) zwrócony przez zapytanie
    while ($wiersz = $rezultat->fetch_assoc()) {
        $pytania[] = $wiersz; // Dodanie każdego pytania do tablicy $pytania
    }
}

// Sprawdzenie, czy formularz został wysłany metodą POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $pokaz_wynik = true; // Ustawienie flagi na true, aby wyświetlić wynik
    // Pętla przechodząca przez każde pytanie w tablicy $pytania
    foreach ($pytania as $pytanie) {
        // Pobranie odpowiedzi użytkownika z formularza. Jeśli nie istnieje, ustaw na 0.
        $odpowiedz_uzytkownika = intval($_POST["pytanie_{$pytanie['id']}"] ?? 0);
        // Sprawdzenie, czy odpowiedź użytkownika jest poprawna
        if ($odpowiedz_uzytkownika === intval($pytanie['poprawna_odpowiedz'])) {
            $wynik++; // Zwiększenie wyniku, jeśli odpowiedź jest poprawna
        }
    }
}

// Zamknięcie połączenia z bazą danych
$polaczenie->close();

// Pobranie liczby wszystkich pytań
$liczba_pytan = count($pytania);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QUIZ - POZIOM ŁATWY</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Style CSS dla poprawnej odpowiedzi */
        .poprawna { background-color: #ccffcc; }
        /* Style CSS dla niepoprawnej odpowiedzi */
        .niepoprawna { background-color: #ffdddd; }
        /* Style CSS dla braku odpowiedzi */
        .brak_odpowiedzi { background-color: #e0e0e0; }
    </style>
</head>
<body>
    <div class="container">
        <?php // Sprawdzenie, czy należy wyświetlić wynik ?>
        <?php if ($pokaz_wynik): ?>
            <h3>Twój wynik: <?php echo "$wynik / $liczba_pytan"; ?></h3>
            <?php // Pętla przechodząca przez każde pytanie i wyświetlająca wynik użytkownika ?>
            <?php foreach ($pytania as $indeks => $pytanie): ?>
                <fieldset>
                    <legend><?php echo ($indeks + 1) . ". " . htmlspecialchars($pytanie['pytanie']); ?></legend>
                    <p>Poprawna odpowiedź: <span class="poprawna"><?php echo htmlspecialchars($pytanie["odpowiedz{$pytanie['poprawna_odpowiedz']}"]); ?></span></p>
                    <p>Twoja odpowiedź:
                        <?php
                        // Pobranie odpowiedzi użytkownika dla bieżącego pytania
                        $odpowiedz_uzytkownika = intval($_POST["pytanie_{$pytanie['id']}"] ?? 0);
                        // Sprawdzenie, czy użytkownik udzielił odpowiedzi
                        if ($odpowiedz_uzytkownika) {
                            // Określenie klasy CSS w zależności od tego, czy odpowiedź jest poprawna
                            $klasa = ($odpowiedz_uzytkownika === intval($pytanie['poprawna_odpowiedz'])) ? 'poprawna' : 'niepoprawna';
                            // Wyświetlenie odpowiedzi użytkownika z odpowiednią klasą CSS
                            echo '<span class="' . $klasa . '">' . htmlspecialchars($pytanie["odpowiedz$odpowiedz_uzytkownika"]) . '</span>';
                        } else {
                            // Wyświetlenie informacji o braku odpowiedzi
                            echo '<span class="brak_odpowiedzi">Nie udzielono odpowiedzi</span>';
                        }
                        ?>
                    </p>
                </fieldset>
            <?php endforeach; ?>
            <a href="QUIZ.php">Wróć na stronę główną</a>
        <?php else: ?>
            <?php // Formularz quizu, wyświetlany jeśli wynik nie jest jeszcze pokazywany ?>
            <form method="POST">
                <h2>QUIZ - POZIOM ŁATWY</h2>
                <?php // Pętla przechodząca przez każde pytanie i wyświetlająca opcje odpowiedzi ?>
                <?php foreach ($pytania as $indeks => $pytanie): ?>
                    <fieldset>
                        <legend><?php echo ($indeks + 1) . ". " . htmlspecialchars($pytanie['pytanie']); ?></legend>
                        <?php // Pętla wyświetlająca 4 opcje odpowiedzi dla każdego pytania ?>
                        <?php for ($i = 1; $i <= 4; $i++): ?>
                            <label>
                                <input type="radio" name="pytanie_<?php echo $pytanie['id']; ?>" value="<?php echo $i; ?>">
                                <?php echo htmlspecialchars($pytanie["odpowiedz$i"]); ?>
                            </label><br>
                        <?php endfor; ?>
                    </fieldset>
                <?php endforeach; ?>
                <input type="submit" value="Sprawdź odpowiedzi" onclick="return confirm('Czy na pewno chcesz przesłać odpowiedzi?')">
            </form>
        <?php endif; ?>
    </div>
</body>
</html>