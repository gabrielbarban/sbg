<?php  
//validando a session
session_start();
$nome_usuario = $_SESSION["nome_usuario"];
$username_usuario = $_SESSION["username_usuario"];
$usuario_id = $_SESSION["usuario_id"];
$empresa_id = $_SESSION["empresa_id"];
if(!$nome_usuario)
header('Location: ../index.php');
?>

<!DOCTYPE html>
<html lang="pt-br">

  <head>

    <script type="text/javascript">
      function verifica_chat()
      {
        $.ajax({
                url: "../controller/verifica_chat.php",
                dataType: "json",
                data: {
                $usuario_id: 1
            },
                success: function(data)
                {
                  if(data[0]['lido'] == '0')
                  {
                    $id =  Number(data[0]['id_usuario']) +  15920 - 350; //salto
                    document.getElementById('canto').innerHTML = "<b><i class='fas fa-envelope'></i> "+data[0]['nome_usuario']+" </b><a href='chat_conversa.php?id="+$id+"'><br><center><i class='fas fa-eye'></i>Visualizar</a></center>";
                  }
                }
          });
      }
    </script>

    
    <style type="text/css">
      textarea{
        background-image: url("http://i.stack.imgur.com/yWNH7.png");
        font-size:21px;
      }
    </style>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SBG</title>

    <!-- Bootstrap core CSS-->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="#"><img src="../images/logo2-sbg.png" style="width: 45px;"><br><span style="font-size: 10px;"><b><?= $nome_usuario ?></b></span></a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

     <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <div class="input-group-append">  
          </div>
        </div>
      </form>

     <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <div id="canto" style="border-radius: 8px; float: right; background-color: #FFFFFF"></div>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="tutoriais.php"><i class="fas fa-question-circle" title="Central de ajuda"></i></a>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="chat.php"><i class="fas fa-envelope" title="Chat"></i></a>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="alterar_cadastro.php">Alterar cadastro</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Sair <i class="fas fa fa-power-off fa-fw"></i></a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
     <?php
     include("../model/config.php");
        $config = new Config();
        
        $permissao1=$config->verifica_permissao($usuario_id, 1); //registros
        $permissao2=$config->verifica_permissao($usuario_id, 2); //dashboard
        $permissao3=$config->verifica_permissao($usuario_id, 3); //relatorios
        $permissao4=$config->verifica_permissao($usuario_id, 4); //clientes
        $permissao5=$config->verifica_permissao($usuario_id, 5); //monitor
        $permissao11=$config->verifica_permissao($usuario_id, 11); //financas
      ?>


      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <?php if($permissao2){ ?>
        <li class="nav-item active">
          <a class="nav-link" href="inicial.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
      <?php } ?>

        <?php if($permissao5){ ?>
        <li class="nav-item active">
          <a class="nav-link" href="monitor.php">
            <i class="fas fa-fw fa fa-desktop"></i>
            <span>Monitor</span>
          </a>
        </li>
        <?php } ?>

        <?php if($permissao1){ ?>
        <li class="nav-item">
          <a class="nav-link" href="registros.php">
            <i class="fas fa-fw fa fa-check"></i>
            <span>Registros</span></a>
        </li>
        <?php } ?>

        <?php if($permissao4){ ?>
        <li class="nav-item">
          <a class="nav-link" href="clientes.php">
            <i class="fas fa-fw   fa  fa fa-child"></i>
            <span>Clientes</span></a>
        </li>
        <?php } ?>

        <?php if($permissao11){ ?>
        <li class="nav-item">
          <a class="nav-link" href="financas.php">
            <i class="fas fa-fw fa fa-cart-plus"></i>
            <span>Saídas</span></a>
        </li>
        <?php } ?>

        <?php if($permissao3){ ?>
        <li class="nav-item">
          <a class="nav-link" href="relatorios.php">
            <i class="fas fa-fw fa-chart-line"></i>
            <span>Relatórios</span></a>
        </li>
        <?php } ?>

        <li class="nav-item">
          <a class="nav-link" href="configuracoes.php">
            <i class="fas fa-fw fa fa fa-cogs"></i>
            <span>Configurações</span></a>
        </li>

      </ul>

     <div id='content-wrapper' style='margin-left: 15px'>
      <i>Clique na etiqueta que deseja imprimir para que o conteúdo apareça</i><br><br>
      <?php
      $id_registro = $_GET['id'];
      //salto =  + 15920 - 350
      $id_registro = $id_registro - 15920 + 350;
      session_start();
      $_SESSION["id_etiqueta_individual"] = $id_registro;

      $data = $config->pega_etiqueta_pimaco($empresa_id);
      $conteudo = $data[0]['codigo'];
      $id = $data[0]['id'];
      ?>
      <?= $conteudo ?>
        <br>
        <a class="btn btn-primary" href="registros.php" ><i class="fas fa-fw fa fa  fa fa-reply"></i>
            <span>Voltar</span></a>
            <a class="btn btn-primary" onclick="impressao()">Imprimir&nbsp;&nbsp;&nbsp;<i class="fa fa fa-print"></i></a>
      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <script type="text/javascript">

      window.onload = function () {
                $.ajax({
                    url: "../controller/pega_etiqueta_json.php",
                    dataType: "json",
                    data: {
                    id: 1
                },
                    success: function(data) {
                      var nome_cliente =data[0]['nome_cliente'];
                      $("#nome").text(nome_cliente);

                      var data_nasc =data[0]['data_nasc'];
                      $("#nascimento").text(data_nasc);

                      var rg =data[0]['rg'];
                      $("#rg").text(rg);

                      var cpf =data[0]['cpf'];
                      $("#cpf").text(cpf);

                      var nome_empresas =data[0]['nome_empresas'];
                      $("#nome_empresas").text(nome_empresas);

                      var data_cadastro =data[0]['data_cadastro'];
                      $("#data_cadastro").text(data_cadastro);

                      var valor =data[0]['valor'];
                      $("#valor").text(valor);

                      var descricao =data[0]['descricao'];
                      descricao = descricao.substring(0,20);
                      $("#descricao").text(descricao);
                      
                    }
                }); 
      }



      function visualizar(valor)
    {
        var div_id = valor.id;
        console.log(div_id)



        $.ajax({
                    url: "../controller/pega_etiqueta_json.php",
                    dataType: "json",
                    data: {
                    id: 1
                },
                    success: function(data) {
                      var texto = '#'+div_id+" #nome";
                      var nome_cliente =data[0]['nome_cliente'];
                      $(texto).text(nome_cliente);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #nascimento";
                      var data_nasc =data[0]['data_nasc'];
                      $(texto).text(data_nasc);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #rg";
                      var rg =data[0]['rg'];
                      $(texto).text(rg);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #cpf";
                      var cpf =data[0]['cpf'];
                      $(texto).text(cpf);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #nome_empresas";
                      var nome_empresas =data[0]['nome_empresas'];
                      $(texto).text(nome_empresas);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #data_cadastro";
                      var data_cadastro =data[0]['data_cadastro'];
                      $(texto).text(data_cadastro);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #valor";
                      var valor =data[0]['valor'];
                      $(texto).text(valor);
                      $(texto).attr("style", "");

                      var texto = '#'+div_id+" #descricao";
                      var descricao =data[0]['descricao'];
                      descricao = descricao.substring(0,20);
                      $(texto).text(descricao);
                      $(texto).attr("style", "");
                      
                    }
                }); 

    }








      function impressao()
            {
              var conteudo = document.getElementById('etiqueta-individual').innerHTML,
              tela_impressao = window.open('about:blank');

              tela_impressao.document.write(conteudo);
              tela_impressao.window.print();
              tela_impressao.window.close();  
            }


    </script>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Sair</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Tem certeza que deseja sair?</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Não</button>
            <a class="btn btn-primary" href="../controller/sair.php">Sim</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="../vendor/datatables/jquery.dataTables.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="../js/demo/datatables-demo.js"></script>

    <script type="text/javascript">
      window.onload = function () {
        setInterval("verifica_chat();", 500);
      }
    </script>

  </body>

</html>
