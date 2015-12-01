/*
create database inventariolab;
use inventariolab;
*/
/*

create table articulo(
	 idarticulo tinyint(4) unsigned not null auto_increment,
	 descripcion varchar(50) not null,
	 marcamodelo varchar(30) not null,
	 codigoinventario varchar(20) not null,
	 cantidad int(7) not null,
	 categoria varchar(25) not null,
	 precio varchar(7) not null,
	 constraint pkarticulo primary key(idarticulo)
 );

*/
#inserts de categoria proceso
insert into articulo values
	(default,"CENTRIFUGA 24 ELEMENTOS","CRM GIOBE","labproc01",1,"proceso","23000.00"),
	(default,"CENTRIFUGA 6 ELEMENTOS","MET PATH","labproc02",1,"proceso","2500.00"),
	/*(default,"PROCESADOR DE BIOMETRIAS","MINDRAY BC5380","labproc03",1,"proceso","550000.00"),*/
	(default,"PROCESADOR DE QUIMICAS SANGUINEAS","MINDRAY BS200","labproc04",1,"proceso","550000.00"),
	(default,"EQUIPO DE ELECTROLITOS SERICOS","EASY LYTE PLUS","labproc05",1,"proceso","55000.00"),
	(default,"AGITADOR","BLOOD MIXING","labproc06",1,"proceso","3500.00"),
	(default,"GASOMETRO","METER PRO","labproc07",1,"proceso","150000.00"),
	(default,"MICROSCOPIO","2E5S PRIMO STAR","labproc08",1,"proceso","65000.00"),
	(default,"CONTADOR DE CELULAR","--","labproc09",1,"proceso","3000.00"),
	(default,"EQUIPO P/PERFIL CARDIACO","ALERE","labproc10",1,"proceso","RENTA"),
	(default,"EQUIPO P/TIEMPO COAGULACION","THROM BOTIMER","labproc11",1,"proceso","45000"),
	(default,"AGITADOR DE MUESTRAS","R-06","labproc12",1,"proceso","5500"),
	(default,"LAMPARA PARA INMUNOLOGIA","HAPTOM BAX","labproc13",1,"proceso","150"),
	(default,"BANO MARIA","--","labproc14",1,"proceso","500"),
	(default,"AGITADOR-ROTADOR","SUPER MIXER","labproc15",1,"proceso","500"),
	(default,"EQUIPO DE BH PEQUENO/URGENCIAS","MINDRAY 3 PARTES","labproc16",1,"proceso","130000"),
	(default,"MICROSCOPIO","LOW CIENTIFIC","labproc17",1,"proceso","4000"),
	(default,"CAMAS DE EXPLORACION","--","labproc18",2,"proceso","3000");

#inserts de categoria computo y mas
insert into articulo values 
	(default,"MONITOR SENSEYE+PHOTO 36CMx20CM","BENQ G610HDA","labcomp01",1,"computo y mas","1800.00"),
	(default,"MONITOR 32 PULGADAS SENSEYE 3 LED","BENQ GL2450","labcomp02",1,"computo y mas","2188.00"),
	(default,"MONITOR NEGRO (SERVER)","LG 206092","labcomp03",1,"computo y mas","1350.00"),
	(default,"MONITOR LENOVO","LNK-L-197WAB","labcomp04",1,"computo y mas","1350.00"),
	(default,"MONITOR","ACER E180HV","labcomp05",1,"computo y mas","1680.00"),
	(default,"CPU NEGRO","LG ACTIVE COOL","labcomp06",1,"computo y mas","1300.00"),
	(default,"CPU NEGRO","COOL MASTER","labcomp07",1,"computo y mas","1450.00"),
	(default,"CPU BLANCA","LENOVO AIO PC","labcomp08",1,"computo y mas","14490.00"),
	(default,"CPU NEGRO","--","labcomp09",1,"computo y mas","1250.00"),
	(default,"CPU NEGRO","LG PX-450RMFUN","labcomp10",1,"computo y mas","1350.00"),
	(default,"TECLADO INALAMBRICO GRANDE","LOGITECH SY149UK","labcomp11",1,"computo y mas","855.00"),
	(default,"TECLADO MEDIANO Y MOUSE OPTICO INALAMBRICOS","LOGITECH 820-005436","labcomp12",1,"computo y mas","834.00"),
	(default,"IMPRESORA","HP LASERJET P1102W","labcomp13",1,"computo y mas","1000.00"),
	(default,"IMPRESORA GRANDE","HP LASERJET M1132 MFP","labcomp14",1,"computo y mas","3200.00"),
	(default,"REGULADOR","ISB DN-21-132","labcomp15",1,"computo y mas","300.00"),
	(default,"REGULADOR","KOBLENZ RS-1200-1","labcomp16",2,"computo y mas","500.00"),
	(default,"JUEGO DE BOCINAS BLUETOOTH 2.1","ILIVE IHB23B","labcomp17",1,"computo y mas","1200.00"),
	(default,"JUEGO DE BOCINAS ALAMBRICAS","LOGITECH X-540","labcomp18",1,"computo y mas","1400.00");

#inserts de categoria accesorios
insert into accesorios values
	(default,"PANTALLA DE PLASMA 32in","SANYO DP32640","labaccs01",1,"accesorios","6990.00"),
	(default,"PANTALLA DE PLASMA 40in","SONY","labaccs02",1,"accesorios","15000.00"),
	(default,"TELEFONO INALAMBRICO","PANASONIC KXTG1711M3","labaccs03",1,"accesorios","719.00"),
	(default,"TELEFONOS DE CASA TELMEX","TELMEX SECRETARIAT","labaccs04",3,"accesorios","690"),
	(default,"MINISPLIT GRANDE","PRIME EMPRC182-L","labaccs05",1,"accesorios","8090.00"),
	(default,"MINISPLIT MEDIANO","YORK YHEA12FSADK","labaccs06",1,"accesorios","9300.00"),
	(default,"ESCRITORIO DE MADERA GRANDE, 4 GABETAS","-----","labaccs07",1,"accesorios","1300.00"),
	(default,"ESCRITORIOS DE OFICINA DE 1.20M APROX","-----","labaccs08",2,"accesorios","2100.00"),
	(default,"MESAS DE ESCRITORIO DE CRISTAL DE 1M APROX","-----","labaccs09",2,"accesorios","2700.00"),
	(default,"CAJONERAS DE MADERA DE 80x50 APROX","-----","labaccs10",2,"accesorios","2000.00"),
	(default,"ARCHIVERO DE OFICINA CON 4 CAJONERAS","-----","labaccs11",1,"accesorios","600"),
	(default,"MESA CHICA PLEGABLE PLASTICO BLANCA","-----","labaccs12",1,"accesorios","500"),
	(default,"BANCA DE 4 SILLAS FORRADAS AZUL","-----","labaccs13",1,"accesorios","2137.96"),
	(default,"BANCA DE 3 SILLAS FORRADAS AZUL","-----","labaccs14",2,"accesorios","1601.72"),
	(default,"BANCA DE 2 SILLAS FORRADAS AZUL","-----","labaccs15",1,"accesorios","1068.10"),
	(default,"SILLAS INDIVIDUALES FORRADAS AZUL","-----","labaccs16",4,"accesorios","700.00"),
	(default,"SILLA SECRETARIAL","L-100","labaccs17",2,"accesorios","474.13"),
	(default,"VENTILADOR DE TECHO BLANCO","-----","labaccs18",1,"accesorios","1000.00"),
	(default,"VENTILADOR DE TECHO, DETALLES EN MADERA","-----","labaccs19",1,"accesorios","1200.00"),
	(default,"VENTILADOR","T-FAL","labaccs20",1,"accesorios","950.00"),
	(default,"REPISAS DE MADERA DE 50x20 APROX, CON MENSULAS","-----","labaccs21",6,"accesorios","300.00"),
	(default,"MACETAS PEQUEÑA CON FLORES ARTIFICIALES DE LUJO","-----","labaccs22",1,"accesorios","1800.00"),
	(default,"SILLON EJECUTIVO TAPIZADO AZUL ELECTRICO","L-300","labaccs23",1,"accesorios","1080.00"),
	(default,"MACETAS GRANDES FLORES ARTIFICIALES DE LUJO","-----","labaccs24",2,"accesorios","2300.00"),
	(default,"MACETAS MEDIANAS SENCILLAS","-----","labaccs25",2,"accesorios","2000.00"),
	(default,"CUADROS DE 60x90","-----","labaccs26",3,"accesorios","900.00"),
	(default,"CUADROS D 100x65","-----","labaccs27",2,"accesorios","1200.00"),
	(default,"CUADROS DE 40x50","-----","labaccs28",3,"accesorios","750.00"),
	(default,"CUADRO DE 100x35","-----","labaccs29",1,"accesorios","1000.00"),
	(default,"CUADRO GRANDE CON ILUMINACION DE LUJO","-----","labaccs30",1,"accesorios","1200.00"),
	(default,"RELOJES REDONDOS GRANDES DE PLASTICO","-----","labaccs31",2,"accesorios","500.00"),
	(default,"REFRIGERADOR","MAE IO MABE","labaccs32",1,"accesorios","11199.00"),
	(default,"REFRIGERADOR","-----","labaccs33",1,"accesorios","12990.00"),
	(default,"HORNO DE MICROONDAS","LG MSO744A","labaccs34",1,"accesorios","1200.00"),
	(default,"EXTINGUIDOR","DL 3/8in","labaccs35",1,"accesorios","500.00");









