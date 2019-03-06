<?php

	require("../PHPMailer/src/PHPMailer.php");
    require("../PHPMailer/src/SMTP.php");
    require("../PHPMailer/src/Exception.php");
    include("../model/config.php");
    $config = new Config();
    $data=$config->chats_nao_lidos();


    if( count($data)>0 )
    {
		$Mailer = new PHPMailer\PHPMailer\PHPMailer();
		$Mailer->IsSMTP(); //protocolo SMTP
		$Mailer->isHTML(true);
		$Mailer->Charset = 'UTF-8'; //codificação para caracteres especiais
		$Mailer->SMTPAuth = true;
		$Mailer->SMTPSecure = 'ssl';
		$Mailer->Host='smtp.gmail.com'; //nome do servidor
		$Mailer->Port=465; //porta de saída
		$Mailer->Username = 'barbangabriel@gmail.com';
		$Mailer->Password = 'gabriel1995';
		$Mailer->From = 'barbangabriel@gmail.com';
		$Mailer->FromName = 'Gabriel Barban';
		$Mailer->Subject = '[SBG] Novas mensagens de SUPORTE';

		$texto = "Olá Sr. Gabriel Barban, tudo bem?<br>Segue abaixo as novas mensagens que o SUPORTE recebeu:<br>";
		foreach ($data as $d) {
			echo $d["nome_usuario1"];exit;
			$texto += "Usuário: ".$d["nome_usuario1"]."<br>Texto: ".$d["texto"]."<br><br>";
		}

		$Mailer->Body = $texto;
		$Mailer->addAddress('barbangabriel@gmail.com');

		if($Mailer->Send()){
			echo "E-mail enviado com sucesso";
		}else{
			echo "E-mail não pôde ser enviado... ERRO: ".$Mailer->ErrorInfo;
		}
	}


?>