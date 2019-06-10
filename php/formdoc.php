
<?php

$origem = $_POST["arquivo"];
$nome = $_POST["nome"];
$destino = '../arquivos/'+$nome;

echo "$origem";
echo "$destino";

   if (copy( $origem, $destino))
   {
      echo "Arquivo copiado com Sucesso.";
   }
   else
   {
      echo "Erro ao copiar arquivo.";
   }

   

?>