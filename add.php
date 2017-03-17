<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./font.css" />
        <link rel="stylesheet" href="./style.css" />
    <head>
    </head>
    <body>
        <?php
            mysql_connect("localhost", "natela", "123") or die("Ошибка соединения: " . mysql_error());
            mysql_select_db("students");
            mysql_query("set names 'utf8';");
            $result = mysql_query(
            "insert into `questions`(`question`, `student`) 
             values (".htmlspecialchars($_POST['question']).", ".htmlspecialchars($_POST['student'])."); ");
        ?>
    </body>
</html>