<?php

$servername = "mysql-connection"; #indica o nome da conexao, que o nome do meu service no cluster
$username = "root";
$password = "lasanha123";
$database = "meudb";

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>
