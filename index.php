<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./font.css" />
        <link rel="stylesheet" href="./style.css" />
    <head>
    </head>
    <body>
        <h1>Список студентов</h1>
        <?php
            mysql_connect("localhost", "natela", "123") or die("Ошибка соединения: " . mysql_error());
            mysql_select_db("students");
            mysql_query("set names 'utf8';");
            $result = mysql_query(
            "select 
                students.stud_group, 
                students.name, 
                students.github
             from students 
             left outer join students_tasks on students_tasks.student_id = students.id
             left outer join tasks on students_tasks.task_id = tasks.id
             left outer join students_labs on students_labs.student_id = students.id
             left outer join labs on students_labs.lab_id = labs.id
             order by 1, 2;");
        ?>
        <table>
            <tr>
                <th>Группа</th>
                <th>ФИО</th>
                <th>Репозиторий</th>
            </tr>
        <?php while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) { ?>
            <tr>
                <td><?php echo $row["stud_group"]; ?></td>
                <td><?php echo $row["name"]; ?></td>
                <td><a href="<?php echo $row["github"]; ?>" target="_blank"><?php echo $row["github"]; ?></a></td>
            </tr>
        <?php } ?>
        </table>
        <form action="add.php" method="post">
            <input type="text" name="student"/>
            <textarea rows="5" name="question"></textarea>
            <input type="submit" value="Отправить"/>
        </form>
    </body>
</html>