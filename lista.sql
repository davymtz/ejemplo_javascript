# use database listalab;

create table categoria_prueba(
	idcategoria tinyint(4) unsigned not null,
	nombre varchar(20) not null,
	constraint pk_categoria primary key(idcategoria)
);


insert into categoria_prueba values (1,"prueba_individual"),
	(2,"perfiles");

create table prueba(
	id_lista tinyint(5) unsigned not null auto_increment,
	nombre_pruebas varchar(30) not null,
	kgc decimal(5,2) null,
	adnlab decimal(5,2) null,
	lasser decimal(5,2) null,
	p_publico decimal(5,2) null,
	categoria tinyint(4) unsigned not null,
	constraint pk_prueba primary key(id_lista),
	constraint fk_prueba foreign key(categoria) references categoria_prueba(idcategoria)
);

/*
insert into prueba values(default,"ALFAFETOPROTEINA",160.00,200.00,130.00,null,1),
	(default,"AC VALPROICO",190.00,260.00,196.00,null,1),
	(default,"ALBUMINA",100.00,40.00,40.00,null,1),
	(default,"CA 125",270.00,270.00,284.00,null,1),
	(default,"CA 15-3",250.00,270.00,198.00,null,1),
	(default,"CA 19-9",300.00,300.00,280.00,null,1),
	(default,"CEA",180.00,210.00,175.00,null,1),
	(default,"CORTISOL",150.00,150.00,148.00,null,1),
	(default,"ESTRADIOL",110.00,130.00,109.00,null,1),
	(default,"FRACCION BETA",180.00,null,null,null,1),
	(default,"HORMONA LUTEINIZANTE",85.00,130.00,85.00,null,1),
	(default,"HORMONA FOLICULO ESTIMULANTE",85.00,130.00,85.00,null,1),
	(default,"HORMONA DE CRECIMIENTO",210.00,150.00,214.00,null,1),
	(default,"HORMONA PARATIROIDEA",100.00,280.00,235.00,null,1),
	(default,"INSULINA",135.00,140.00,138.00,null,1),
	(default,"PROLACTINA",80.00,130.00,70.00,null,1),
	(default,"PROGESTERONA",80.00,130.00,76.00,null,1),
	(default,"TSH",70.00,130.00,68.00,null,1),
	(default,"t3 TOTAL",100.00,115.00,98.00,null,1),
	(default,"t3 LIBRE",150.00,120.00,150.00,null,1),
	(default,"t4 TOTAL",100.00,120.00,100.00,null,1),
	(default,"t4 LIBRE",110.00,120.00,89.00,null,1),
	(default,"TOXOPLASMA IgG",230.00,null,231.00,null,1),
	(default,"INMUNOGLOBULINA E",135.00,150.00,135.00,null,1),
	(default,"TESTOSTERONA TOTAL",100.00,135.00,100.00,null,1),
	(default,"YODO PROTEICO",85.00,115.00,null,null,1),
	(default,"PSA TOTAL",165.00,165.00,118.00,null,1),
	(default,"MICROALBUMINARIA",230.00,200.00,264.00,null,1),
	(default,"PCR ULTRASENSIBLE",300.00,null,null,null,1),
	(default,"CK",110.00,95.00,180.00,null,1),
	(default,"CK MB",120.00,95.00,199.00,null,1),
	(default,"DIMERO D",550.00,690.00,576.00,null,1),
	(default,"TROPONINA I",330.00,350.00,331.00,null,1),
	(default,"FERRITINA",180.00,170.00,180.00,null,1),
	(default,"HEMOGLOBINA GLUCOSILADA",137.00,170.00,137.00,null,1),
	(default,"ANTI DUO DENGUE/CHIK",400.00,null,null,null,1),
	(default,"CISTATINA C",450.00,350.00,462.00,null,1),
	(default,"ADOLESCENTE HOMBRE",350.00,340.00,null,null,2),
	(default,"ADOLESCENTE MUJER",400.00,400.00,null,null,2),
	(default,"ALERGIAS 6 PARAMETROS",650.00,870.00,null,null,2),
	(default,"ANEMIAS",750.00,700.00,789.00,null,2),
	(default,"CLIMATERIO",250.00,320.00,252.00,null,2),
	(default,"DROGAS 3 PARAMETROS",400.00,330.00,419.00,null,2),
	(default,"DROGAS 5 PARAMETROS",550.00,530.00,559.00,null,2),
	(default,"GINECOLOGICO",550.00,550.00,473.00,null,2),
	(default,"HORMONAL FEMENINO I (PHF1)",null,null,515.00,null,2),
	(default,"HORMONAL FEMENINO II",900.00,700.00,816.00,null,2),
	(default,"HORMONAL MASCULINO",550.00,700.00,541.00,null,2),
	(default,"TIROIDEO 6 PARAMETROS",310.00,240.00,226.00,null,2),
	(default,"TORCH I IgM",650.00,700.00,null,null,2),
	(default,"TORCH I IgG",600.00,675.00,null,null,2),
	(default,"HELICOBACTER PYLORI IgG",295.00,270.00,null,null,2),
	(default,"CHLAMYDIA TRACHOMATIS IgG",720.00,290.00,null,null,2),
	(default,"CHLAMYDIA TRACHOMATIS IgM",250.00,290.00,null,null,2),
	(default,"ANTI HCV (MICROELISA)",300.00,null,null,null,2);


#setencia para crear vista

select id_lista,nombre_pruebas as estudios,kgc,adnlab,lasser,p_publico,cat.nombre as categoria from categoria_prueba cat,prueba p
where cat.idcategoria=p.categoria;

#crear vista, sentencia
create view [nombre de tabla vista] as {consulta};

create view lista_completa as select id_lista,nombre_pruebas as estudios,kgc,adnlab,lasser,p_publico,cat.nombre as categoria from categoria_prueba cat,prueba p
where cat.idcategoria=p.categoria;


*/