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
            <a class="dropdown-item" href="alterar_cadastro">Alterar cadastro</a>
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



      <!-- AGENDAMENTO -->
      <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="alterar1(this)">
            <font color="black"><i class="fas fa-chevron-down" id="icon1"></i> Agendamento</font>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <?php if($permissao1){ ?>
              <a class="nav-link" href="novo_agendamento"><i class="fas fa-fw fa fa-bolt"></i><span> Cadastrar novo</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao1){ ?>
              <a class="nav-link" href="agendamentos"><i class="fas fa-fw fa fa-list-ul"></i><span> Listar agendamentos</span></a>
            <?php } ?>
          </div>
      </li>



        <!-- OPERAÇÃO -->
      <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="alterar2(this)">
            <font color="black"><i class="fas fa-chevron-down" id="icon2"></i> Atendimento</font>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <?php if($permissao1){ ?>
              <a class="nav-link" href="novo_registro"><i class="fas fa-fw fa fa-bolt"></i><span> Cadastrar novo</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao1){ ?>
              <a class="nav-link" href="registros"><i class="fas fa-fw fa fa-list-ul"></i><span> Listar registros</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao4){ ?>
              <a class="nav-link" href="clientes"><i class="fas fa-fw   fa  fa fa-search"></i><span> Buscar clientes</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao5){ ?>
              <a class="nav-link" href="monitor"><i class="fas fa-fw fa fa-desktop"></i><span> Monitorar espera</span></a>
            <?php } ?>
          </div>
      </li>



      <!-- GERENCIAMENTO -->
      <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="alterar3(this)">
            <font color="black"><i class="fas fa-chevron-down" id="icon3"></i> Gerenciamento</font>
          </a>

          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <?php if($permissao2){ ?>
              <a class="nav-link" href="inicial"><i class="fas fa-fw fa-tachometer-alt"></i><span> Dashboard</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao3){ ?>
              <a class="nav-link" href="customer_report"><i class="fa fa-database"></i><span> BI</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao3){ ?>
              <a class="nav-link" href="relatorios"><i class="fas fa-fw fa-chart-line"></i><span> Relatórios</span></a>
            <?php } ?>
            <div class="dropdown-divider"></div>
            <?php if($permissao11){ ?>
              <a class="nav-link" href="financas"><i class="fas fa-fw fa fa-folder-open"></i><span> Financeiro</span></a>
            <?php } ?>
          </div>
      </li>
        

        <li class="nav-item">
          <a class="nav-link" href="configuracoes">
            <i class="fas fa-fw fa fa fa-cogs"></i>
            <span>Configurações</span></a>
        </li>

      </ul>

     <div id='content-wrapper' style='margin-left: 15px'>
      <?php
      $id_registro = $_GET['id'];
      //salto =  + 15920 - 350
      $id_registro = $id_registro - 15920 + 350;
      session_start();
      $_SESSION["id_etiqueta_individual"] = $id_registro;

      $data = $config->pega_codigo_documento($id);
      $conteudo = $data[0]['codigo'];
      $id = $data[0]['id'];
      ?>
      <?= $conteudo ?>
        <br>
        <a class="btn btn-primary" href="registros" ><i class="fas fa-fw fa fa  fa fa-reply"></i>
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
                      $("#descricao").text(descricao);
                      
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
