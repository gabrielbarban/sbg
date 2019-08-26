<?php

session_start();
include("../model/config.php");
$config = new Config();

//pegando os dados do form
$campo1 = $_POST['campo1'];
$apelido1 = $config->valida_campo_relatorio($_POST['campo1']);

$campo2 = $_POST['campo2'];
$apelido2 = $config->valida_campo_relatorio($_POST['campo2']);

$campo3 = $_POST['campo3'];
$apelido3 = $config->valida_campo_relatorio($_POST['campo3']);

$nome_relatorio = $_POST['nome_relatorio'];

$query = $campo1.",".$campo2.",".$campo3;
$apelidos = $apelido1.",".$apelido2.",".$apelido3;
$empresa_id = $_SESSION["empresa_id"];
$usuario_id = $_SESSION["usuario_id"];

$config->novo_custom_report($nome_relatorio, $query, $apelidos, $empresa_id, $usuario_id);
header('Location: ../view/customer_report.php');

?>