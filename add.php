<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./font.css" />
        <link rel="stylesheet" href="./style.css" />
    <head>
    </head>
    <body>
        <pre><?php print_r($_POST) ?></pre>
        <?php
          mysql_connect("localhost", "natela", "123");
          mysql_select_db("students1");
          mysql_query("set names 'utf8';");
          $name = $_POST['name'];
          $github = $_POST['github'];
          $stud_group = $_POST['stud_group'];
          if($name && $github && $stud_group) {
            $sql = "insert into students (name, stud_group, github)
                    values ('".$name."', '".$stud_group."', '".$github."')";
            if(mysql_query($sql)){
              echo "Добавлен студент ".mysql_insert_id().", ".$stud_group.", ".$name.", ".$github;
            }
            else {
              echo "данные не добавлены";
            }
          }
        ?>
    </body>
</html>
