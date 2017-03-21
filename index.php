<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./font.css" />
        <link rel="stylesheet" href="./style.css" />
    <head>
    </head>
    <body>
        <h1>Список студентов</h1>
        <table>
          <tr>
            <th>Группа</th>
            <th>Имя</th>
            <th>Репозиторий</th>
          </tr>
          <?php
            mysql_connect("localhost", "natela", "123");
            mysql_select_db("students1");
            mysql_query("set names 'utf8';");
            $sql = "select name, stud_group, github
                    from students order by 2, 1";
            $result = mysql_query($sql);
            while($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
          ?>
              <tr>
                <td><?php echo $row["stud_group"]; ?></td>
                <td><?=$row["name"] ?></td>
                <td>
                  <a href="<?= $row["github"]; ?>" target="_blank">
                    <?= $row["github"]; ?>
                  </a>
                </td>
              </tr>
            <?php }?>
        </table>
        <form action="add.php" method="post">
          <input type="text" name="name"/>
          <input type="text" name="stud_group"/>
          <input type="text" name="github"/>
          <input type="submit">
        </form>
    </body>
</html>
