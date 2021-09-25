<?php 
	//const BASE_URL = "https://sakurashop.com/store";
	const BASE_URL = "http://localhost/tiendaOn";

	//Zona horaria
	date_default_timezone_set('America/Guatemala');

	//Datos de la base de datos
	const DB_HOST = "localhost";
	const DB_NAME = "db_tiendaon";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Envío de correo local o Hosting
	const ENVIRONMENT = 0; // Local: 0, Hosting: 1;

	//Deliminadores decimal y millar Ej. 10,125.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "Q";
	const CURRENCY = "GTQ";

	
	//Datos envio de correo
	const NOMBRE_REMITENTE = "Sakura Shop";
	const EMAIL_REMITENTE = "mybusinnes.gt@hotmail.com";
	const NOMBRE_EMPESA = "Sakura Shop";
	const WEB_EMPRESA = "www.sakurashop.com";

	const DESCRIPCION = "Tienda de accesorios de Anime";
	const SHAREDHASH = "TiendaOnline";

	//Datos de la empresa
	const DIRECCION = "Guatemala";
	const TELEMPRESA = "+(502)36186733";
	const WHATSAPP = "+50236186733";
	const EMAIL_EMPRESA = "mybusinnes.gt@hotmail.com";
	const EMAIL_PEDIDOS = "mybusinnes.gt@hotmail.com"; 
	const EMAIL_SUSCRIPCION = "mybusinnes.gt@hotmail.com";
	const EMAIL_CONTACTO = "mybusinnes.gt@hotmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'zay';
	const METHODENCRIPT = "AES-128-ECB";

	//Costo del envío
	const COSTOENVIO = 35;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 7;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	const PNOSOTROS = 4;
	const PCONTACTO = 5;
	const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PERROR = 9;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 3;

	const STATUS = array('Completo','Aprobado','Cancelado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/sakurashopgt-114006260437108/";
	const INSTAGRAM = "https://www.instagram.com/sakurashop_gt/";
	

 ?>