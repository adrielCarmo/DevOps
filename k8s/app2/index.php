<!DOCTYPE html>
<html lang="pt-br">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Meu App PHP</title>
</head>

<body>
   <h1>Meu Aplicativo PHP</h1>
   <?php

   echo gethostname();
   echo "<br>";
   echo $_SERVER["REMOTE_ADDR"];
   echo "<br>";
   echo date('Y-m-d H:i:s');

   ?>
</body>

</html>