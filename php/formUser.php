
<?php

include("conexao.php");


$nome = $_POST["nome"];
$senha = $_POST["senha"];
$email = $_POST["email"];


$query = "INSERT INTO atendente (nome,email, senha) VALUES ('$nome','$email', '$senha')";

die($query);
$salvar = mysqli_query($conexao, $query);


echo "Seu cadastro foi realizado com sucesso!<br>";
?> 




