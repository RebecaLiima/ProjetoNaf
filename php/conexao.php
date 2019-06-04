<?php
$servername = "localhost";
$username = "root";
$password = "";
$nameBd = "projeto_naf";

//conectando com o localhost - mysql
$conexao = mysqli_connect($servername, $username, $password, $nameBd);
if (!$conexao)
	die ("Erro de conex�o com localhost, o seguinte erro ocorreu -> ".mysqli_error());
//conectando com a tabela do banco de dados
$banco = mysqli_select_db($conexao, $nameBd);

if (!$banco)
	die ("Erro de conex�o com banco de dados, o seguinte erro ocorreu -> ".mysqli_error());
?>