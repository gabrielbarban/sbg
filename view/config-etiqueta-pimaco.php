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

    <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> <script type="text/javascript">
        bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
    </script>

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
        color: #0062cc;
        font-family: Arial, Helvetica, sans-serif;
        font-style:italic;
        font-weight: bold;
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

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top" style="background: #ADD8E6 !important;">

      <a class="navbar-brand mr-1" href="#"><img src="../images/sugestao1.png" style="width: 110px; border-radius: 30px;"><br><span style="color: black; font-size: 14px;"><b><?= $nome_usuario ?></b></span></a>

      

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
          <a class="nav-link dropdown-toggle" href="tutoriais.php"><font color="black"><i class="fas fa-question-circle" title="Central de ajuda"></i></font></a>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="chat.php"><font color="black"><i class="fas fa-envelope" title="Chat"></i></font></a>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <font color="black"><i class="fas fa-user-circle fa-fw"></i></font>
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




        <!-- OPERAÇÃO -->
      <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <font color="black"><i class="fas fa-check"></i> Atendimento</font>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <?php if($permissao1){ ?>
              <a class="nav-link" href="novo_registro.php"><i class="fas fa-fw fa fa-bolt"></i><span> Cadastrar novo</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao1){ ?>
              <a class="nav-link" href="registros.php"><i class="fas fa-fw fa fa-list-ul"></i><span> Listar registros</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao4){ ?>
              <a class="nav-link" href="clientes.php"><i class="fas fa-fw   fa  fa fa-search"></i><span> Buscar clientes</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao5){ ?>
              <a class="nav-link" href="monitor.php"><i class="fas fa-fw fa fa-desktop"></i><span> Monitor</span></a>
            <?php } ?>
          </div>
      </li>



      <!-- GERENCIAMENTO -->
      <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <font color="black"><i class="fas fa-check"></i> Gerenciamento</font>
          </a>

          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <?php if($permissao2){ ?>
              <a class="nav-link" href="inicial.php"><i class="fas fa-fw fa-tachometer-alt"></i><span> Dashboard</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao3){ ?>
              <a class="nav-link" href="customer_report.php"><i class="fa fa-database"></i><span> BI</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao3){ ?>
              <a class="nav-link" href="relatorios.php"><i class="fas fa-fw fa-chart-line"></i><span> Relatórios</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao11){ ?>
              <a class="nav-link" href="financas.php"><i class="fas fa-fw fa fa-folder-open"></i><span> Financeiro</span></a>
            <?php } ?>
          </div>
      </li>
        

        <li class="nav-item">
          <a class="nav-link" href="configuracoes.php">
            <i class="fas fa-fw fa fa fa-cogs"></i>
            <span>Configurações</span></a>
        </li>

      </ul>

     <div id='content-wrapper' style='margin-left: 15px'>
      <?php
      $data = $config->pega_etiqueta_pimaco($empresa_id);
      $conteudo = $data[0]['codigo'];
      $id = $data[0]['id'];
      ?>
        <h3><i class="fas fa-fw fa fa  fa-cubes"></i> Etiqueta PIMACO:</h3><br>
        <i><b>Campos disponíveis: </b>nome, nascimento, rg, cpf, nome_empresas, data_cadastro, valor e descricao</i><Br><br><br>
        <form action="../controller/altera_etiqueta_pimaco.php" method="post">
        <input type="hidden" name="id" value="<?= $id ?>">
        <textarea name="codigo" cols="85" rows="25" style="border-radius: 24px; border: 6px solid #888;"><?= $conteudo?></textarea><br>
        <input type="submit" style="width: 83% !important; background-color: #ced4da;" class="form-control" value="Salvar">
        </form>
        </i></b>

        <br>

        <a class="btn btn-primary" href="companhia.php" ><i class="fas fa-fw fa fa  fa fa-reply"></i>
            <span>Voltar</span></a>
      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

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

    <script type="text/javascript">
      window.onload = function () {
        setInterval("verifica_chat();", 500);
      }
    </script>


  </body>

</html>
