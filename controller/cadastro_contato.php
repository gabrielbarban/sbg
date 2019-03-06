<?php
include("../model/config.php");
$config = new Config();

$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];

$config->novo_contato($nome, $email, $telefone);
echo ("<SCRIPT LANGUAGE='JavaScript'>
	window.alert('Obrigado por se cadastrar, em breve nossa equipe entrará em contato com você :)')
	window.location.href='../index.php';
	</SCRIPT>");

?>
