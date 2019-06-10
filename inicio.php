<html>

<head>
  
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="../Projeto NAF/node_modules/jquery/src/jquery.js"></script>
        <!-- Bootstrap core CSS -->
    <link href="../Projeto NAF/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../Projeto NAF/css/bootstrap.css" rel="stylesheet">
    <link href="../Projeto NAF/css/formularios.css" rel="stylesheet">
    <script src="../Projeto NAF/js/jquery.js"></script>
    <script src="../Projeto NAF/js/bootstrap.min.js"></script>

  

    <link type="text/css" rel="stylesheet" href="/portal/resources/style-guide/css/fluig-style-guide.min.css"/>
    <script type="text/javascript" src="/portal/resources/js/jquery/jquery.js"></script>
    <script type="text/javascript" src="/portal/resources/js/jquery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/portal/resources/js/mustache/mustache-min.js"></script>
    <script type="text/javascript" src="/portal/resources/style-guide/js/fluig-style-guide.min.js" charset="utf-8"></script>

  
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    

 <!--Load the AJAX API-->
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 <script type="text/javascript">

   // Load the Visualization API and the corechart package.
   google.charts.load('current', {'packages':['corechart']});

   // Set a callback to run when the Google Visualization API is loaded.
   google.charts.setOnLoadCallback(drawChart);

   // Callback that creates and populates a data table,
   // instantiates the pie chart, passes in the data and
   // draws it.
   function drawChart() {

     // Create the data table.
     var data = new google.visualization.DataTable();
     data.addColumn('string', 'Topping');
     data.addColumn('number', 'Slices');
     data.addRows([
       ['Rebeca', 3],
       ['Maria', 2],
       ['João', 1],
       
     ]);
     var data2 = new google.visualization.DataTable();
     data2.addColumn('string', 'Topping');
     data2.addColumn('number', 'Slices');
     data2.addRows([
       ['Declaração de imposto de renda', 3],
       ['Outros', 2],
       
     ]);
     var options = {'title':'Atendimentos na semana por Atendente',
                    'width':400,
                    'height':300};
     // Set chart options
     var options2 = {'title':'Atendimentos na semana por Serviço',
                    'width':400,
                    'height':300};

     // Instantiate and draw our chart, passing in some options.
     var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
     var chart2 = new google.visualization.PieChart(document.getElementById('chart_div2'));
     chart.draw(data, options);
     chart2.draw(data2, options2);
   }
   
 </script>

</head>
<body>
    

<!-- Abas nav -->
<ul class="nav nav-tabs" id="myTab" role="tablist">
        <img class="mb-4" src="../Projeto NAF/imagens/logoNaf.png" alt="" width="120" height="80">
        <li class="nav-item" >
          <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" data-toggle="tab" href="#user" role="tab" aria-controls="profile" aria-selected="false">Cadastrar Usuário</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="messages-tab" data-toggle="tab" href="#doc" role="tab" aria-controls="messages" aria-selected="false">Cadastrar Serviço</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Atendentes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="clientes-tab" data-toggle="tab" href="#clientes" role="tab" aria-controls="clientes" aria-selected="false">Clientes</a>
        </li>
      </ul>
      
      <!-- Painel de abas -->
      <div class="tab-content">
        <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div style="margin-right: 10px;margin-left: 500px; margin-top: 50px; float:left;">
                <div id="chart_div"></div>
                <div id="chart_div2"></div>

</div>

        </div>
        <div class="tab-pane" id="user"  align-items= "center" role="tabpanel" aria-labelledby="profile-tab">
            
                <form style="margin-right: 10px;margin-left: 500px; margin-top: 50px;" id="cadastro" name="cadastro" method="post" action="php/formUser.php">
                    <div >
                        <label>Nome </label>
                        <input type="nome" style="width:300px;font-size: 13px" class="form-control" name="nome" id="nome" >
                    </div>
          
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email </label>
                      <input type="email" style="width:300px;font-size: 13px"  class="form-control" name="email" id="email" aria-describedby="emailHelp" >
                      
                    </div>
          
                    <div class="form-group">
                      <label for="exampleInputPassword1">Senha</label>
                      <input type="password" style="width:300px;font-size: 13px" class="form-control" name="senha" id="senha">
                    </div>
   
                   <button type="submit" class="btn btn-primary">Cadastrar</button>
                  </form>
        
       
        </div>
        <div class="tab-pane" id="doc" role="tabpanel" aria-labelledby="messages-tab">

                <form style="margin-right: 10px;margin-left: 500px; margin-top: 50px;" id="documentos" name="documentos" method="post" action="php/formdoc.php">
                    <div class="form-group">
                        <label >Nome </label>
                        <input type="text" style="width:300px;font-size: 13px" class="form-control" name="nome" id="nome"  >
                        
                      </div>
            
                      <div class="form-group">
                          <label for="exampleFormControlFile1">Anexar documento</label>
                          <input type="file" style="width:300px;font-size: 13px" class="form-control-file" name="arquivo" id="arquivo">
                        </div>
                    
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                  </form>

        </div>

        <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab">
          <?php
           include("php/conexao.php");

          $sql = "SELECT nome FROM atendente";
          $q = mysqli_query($conexao,$sql);
          $linha = mysqli_fetch_assoc($q);
          $total = mysqli_num_rows($q);
          if($total > 0) {
            // inicia o loop que vai mostrar todos os dados
            do {
    ?>
                <p style="margin-right: 50px;margin-left: 50px; margin-top: 20px;"><?=$linha['nome']?> </p>
    <?php
            // finaliza o loop que vai mostrar os dados
            }while($linha = mysqli_fetch_assoc($q));
        // fim do if 
        }

          ?>
 
        </div>

        <div class="tab-pane" id="clientes" role="tabpanel" aria-labelledby="clientes-tab">
          <?php
           include("php/conexao.php");

          $sql = "SELECT nome, telefone, email FROM cliente";
          $q = mysqli_query($conexao,$sql);
          $linha = mysqli_fetch_assoc($q);
          $total = mysqli_num_rows($q);
?>
          


<?php
          if($total > 0) {
            
            // inicia o loop que vai mostrar todos os dados
            do {
    ?>


                <p style="margin-right: 50px;margin-left: 50px; margin-top: 20px;"><?=$linha['nome']?> / <?=$linha['telefone']?> / <?=$linha['email']?></p>
                </table>
    <?php
            // finaliza o loop que vai mostrar os dados
            }while($linha = mysqli_fetch_assoc($q));
        // fim do if 
        }

          ?>
         


        </div>
      </div>


        </body>
</html>