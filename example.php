<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  </head>
  <body>
    <?php
        $hello = 'Hello, world!';
        echo $hello;
        echo '<br>';
        $boolvar = TRUE;
        echo $boolvar;
        echo '<br>';
        $hello = TRUE;
        echo $hello;
        echo '<br>';
        $int = 23;
        echo $int;
        echo '<br>';
        $float = 1.23;
        echo $float;
        $arr = array( $int, $float, $hello, $boolvar );
        echo "<pre>";
        print_r($arr);
        echo "</pre><ul>";
        for($i = 0; $i < count($arr); $i++) {
          echo '<li>';
          echo $arr[$i];
          echo '</li>';
        }
        echo '</ul>';
        $assoc_arr = array (
          "boolean" => $boolvar,
          "integer" => $int
        );
        echo "<br>";
        echo '<pre>';
        var_dump($assoc_arr);
        echo '</pre><ul><li>'.$assoc_arr["boolean"].'</li><li>'.$assoc_arr["integer"].'</li></ul>';
    ?>
  </body>
</html>
