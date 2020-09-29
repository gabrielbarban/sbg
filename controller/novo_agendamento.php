<?php

//controller

session_start();
include("../model/config.php");
$config = new Config();

$cliente_id = $_POST['id_cliente'];
$valor_id = $_POST['id_valor1'];
$agenda_id = $_POST['agenda'];
$qtdHorarios = $_POST['qtd1'];
$diaInicio = $_POST['dia'];
$mesInicio = $_POST['mes'];
$anoInicio = $_POST['ano'];
$horaInicio = $_POST['hora'];
$minutoInicio = $_POST['minuto'];
$segundoInicio = "00";
$segundoFim = "00";
$empresa_id = $_SESSION["empresa_id"];
$usuario_id = $_SESSION["usuario_id"];



if($qtdHorarios == "1")
{
	$diaFim = $_POST['dia'];
	$mesFim = $_POST['mes'];
	$anoFim = $_POST['ano'];

	if($_POST['minuto']=="30")
	{
		$horaFim = intval($_POST['hora'])+1;
		$minutoFim = "00";
	}

	if($_POST['minuto']=="00")
	{
		$horaFim = $_POST['hora'];
		$minutoFim = "30";
	}
}


if($qtdHorarios == "2")
{
	$diaFim = $_POST['dia'];
	$mesFim = $_POST['mes'];
	$anoFim = $_POST['ano'];

	if($_POST['minuto']=="30")
	{
		$horaFim = intval($_POST['hora'])+1;
		$minutoFim = "30";
	}

	if($_POST['minuto']=="00")
	{
		$horaFim = $_POST['hora']+1;
		$minutoFim = "00";
	}
}


if($qtdHorarios == "3")
{
	$diaFim = $_POST['dia'];
	$mesFim = $_POST['mes'];
	$anoFim = $_POST['ano'];

	if($_POST['minuto']=="00")
	{
		$horaFim = intval($_POST['hora'])+1;
		$minutoFim = "30";
	}

	if($_POST['minuto']=="30")
	{
		$horaFim = $_POST['hora']+2;
		$minutoFim = "00";
	}
}



if($qtdHorarios == "4")
{
	$diaFim = $_POST['dia'];
	$mesFim = $_POST['mes'];
	$anoFim = $_POST['ano'];

	if($_POST['minuto']=="00")
	{
		$horaFim = intval($_POST['hora'])+2;
		$minutoFim = "00";
	}

	if($_POST['minuto']=="30")
	{
		$horaFim = $_POST['hora']+2;
		$minutoFim = "30";
	}
}


$config->novo_agendamento($valor_id, $agenda_id, $usuario_id, $cliente_id, $empresa_id, $horaInicio, $minutoInicio, $segundoInicio, $diaInicio, $mesInicio, $anoInicio,   $horaFim, $minutoFim, $segundoFim, $diaFim, $mesFim, $anoFim);
header('Location: ../view/agendamentos');


?>