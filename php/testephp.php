<?php

echo 'Nome: ' . ($_GET['nome'] ?? '') . "<br>"; 
echo 'E-mail: ' . ($_GET['email'] ?? '') . "<br>";

?>

<p style="margin-right: 50px;margin-left: 50px; margin-top: 20px;"><?=$linha['nome']?> / <?=$linha['telefone']?> / <?=$linha['email']?></p>