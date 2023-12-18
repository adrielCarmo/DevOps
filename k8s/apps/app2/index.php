<!DOCTYPE html>
<html lang="pt-br">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Meu App PHP</title>
</head>

<body>
   <h1>Meu Aplicativo PHP</h1>
   <p>Realizada alteracao dentro do container do Pod que roda essa aplicacao!</p>
   <?php

   echo gethostname();
   echo "<br>";
   echo $_SERVER["REMOTE_ADDR"];
   echo "<br>";
   echo date('Y-m-d H:i:s');

   ?>
</body>

<script>
   
   let x = window.prompt("A aplicacao e boa?");

   if(x == "SIM" || x == "sim" || x == "s") {
      alert("BRABO!");
   } else {
      alert("FAZ MELHOR ENTAO SEU OTARIO!");
   }

</script>

</html>