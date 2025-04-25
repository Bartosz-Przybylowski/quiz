<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>POZIOM TRUDNOŚCI</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="">
    <h2>WYBIERZ POZIOM TRUDNOŚCI</h2>

    <a href="poziom_latwy.php" onclick="return confirm('Czy na pewno chcesz rozpocząć poziom łatwy?')" style="margin-right: 50px;">
        <div id="latwy">
            <h3>POZIOM ŁATWY</h3>
        </div>
    </a>

    <a href="poziom_sredni.php" onclick="return confirm('Czy na pewno chcesz rozpocząć poziom średni?')" style="margin-right: 50px;">
    <div id="sredni">
        <h3>POZIOM ŚREDNI</h3>
    </div>
    </a>

    <a href="poziom_trudny.php" onclick="return confirm('Czy na pewno chcesz rozpocząć poziom trudny?')">
    <div id="trudny">
        <h3>POZIOM TRUDNY</h3>
    </div>
    </a>
    </form>
</body>
</html>