<?php
include("../model/config.php");
$config = new Config();

$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];

$config->novo_contato($nome, $email, $telefone);


require("../PHPMailer/src/PHPMailer.php");
require("../PHPMailer/src/SMTP.php");
require("../PHPMailer/src/Exception.php");

$Mailer = new PHPMailer\PHPMailer\PHPMailer();
$Mailer->IsSMTP(); //protocolo SMTP
$Mailer->isHTML(true);
$Mailer->Charset = 'UTF-8'; //codificação para caracteres especiais
$Mailer->SMTPAuth = true;
$Mailer->SMTPSecure = 'ssl';
$Mailer->Host='smtp.gmail.com'; //nome do servidor
$Mailer->Port=465; //porta de saída
$Mailer->Username = 'plataforma.sbg@gmail.com';
$Mailer->Password = 'G@briel1995';
$Mailer->From = 'plataforma.sbg@gmail.com';
$Mailer->FromName = 'Plataforma SBG';
$Mailer->Subject = '[SBG] NOVO LEAD';
$texto = "<b>Eaí, tudo bem?</b><br>Segue abaixo as informacoes do novo LEAD que acabou de se cadastrar:<br><br><br>Nome: ".$nome."<br>E-mail: ".$email."<br>Telefone: ".$telefone."<br><br><br><i>E-mail enviado através do Assistente inteligente da Plataforma</i>";

$Mailer->Body = $texto;
$Mailer->addAddress('barbangabriel@gmail.com');
$Mailer->addAddress('leguedesmello@gmail.com ');

if($Mailer->Send()){
	echo "E-mail enviado com sucesso";
}else{
	echo "E-mail não pôde ser enviado... ERRO: ".$Mailer->ErrorInfo;
}


echo ("<SCRIPT LANGUAGE='JavaScript'>
	window.alert('Obrigado por se cadastrar, em breve nossa equipe entrará em contato com você :)')
	window.location.href='../index.php';
	</SCRIPT>");

?>
