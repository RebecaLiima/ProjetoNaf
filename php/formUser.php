
<?php

include("conexao.php");


$nome = $_POST["nome"];
$senha = $_POST["senha"];
$email = $_POST["email"];


$query = "INSERT INTO atendente (nome,email, senha) VALUES ('$nome','$email', '$senha')";

//die($query);
$salvar = mysqli_query($conexao, $query);

if ($salvar) {
    echo "<script type='text/javascript'>window.alert('".$nome."! Sua mensagem foi enviada com sucesso!');</script>";
echo '<meta HTTP-EQUIV="Refresh" CONTENT="1; URL=../inicio.html">';
exit;
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($conexao);
}

?> 




