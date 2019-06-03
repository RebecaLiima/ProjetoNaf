<!DOCTYPE html >
<html >
<head>
<title>Cadastro Usuário</title>
</head>
<body>
<?php


// define variables and set to empty values

$dia = $_POST["dia"];
$hora = $_POST["hora"];


$query = "INSERT INTO `usuario` ( `dia` , `hora` ) 
VALUES ('$dia', '$hora')";

mysql_query($query,$conexao);

echo "Seu cadastro foi realizado com sucesso!<br>";
?> 
</body>

</html>
