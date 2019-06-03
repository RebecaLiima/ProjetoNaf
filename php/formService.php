
<?php

include("conexao.php");


$nome = $_POST["nome"];
$documentos = $_POST["documentos"];

$query = "INSERT INTO `servico` ( `nome` , `documentos` ) 
VALUES ('$nome', '$documentos')";

mysql_query($query,$conexao);

?> 

