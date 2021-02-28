--  Aluno    Guilherme Alves Lopes
--  RGM      24608777
--  SGDB     MySQL server - Ver 14.14 Distrib 5.7.33, for Linux (x86_64) using  EditLine wrapper
--  OS       Ubuntu Xenial x64
--  Ambiente Máquina virtual Vagrant customizada especificamente para este projeto.

--  Script escrito no editor de textos "Gedit" no linux.


--  Uso de DDL para criação do banco e das tabelas

create database proj_dados_aluno_rgm24608777

select database proj_dados_aluno_rgm24608777

create table alunos (
	nr_rgm        int         NOT NULL PRIMARY KEY,
	nm_nome       varchar(40) NOT NULL,
	nm_pai        varchar(40) ,
	nm_mae        varchar(40) ,
	dt_nascimento date        ,
	id_sexo       char(1)			
);

create table classes (
	cd_classe    int          NOT NULL PRIMARY KEY,
	nr_anoletivo year         NOT NULL,
	sg_turma     varchar      ,
	cd_escola    int          ,
	cd_grau      int          ,
	cd_periodo   int				
);

create table matriculas (
	id             int  NOT NULL PRIMARY KEY,
	nr_rgm         int  ,
	cd_classe      int  ,
	data_matricula date ,
	
	CONSTRAINT FK_aluno_matricula
		FOREIGN KEY (nr_rgm)
		REFERENCES alunos(nr_rgm),
	CONSTRAINT FK_matricula_classe
		FOREIGN KEY (cd_classe)
		REFERENCES classes(cd_classe)
);

-- Uso de DML para inserção, afim de comprovar o funcionamento do banco e das três novas tabelas criadas.

INSERT INTO classes (cd_classe, nr_anoletivo, sg_turma)
VALUES
	(1, 2021, 'CDS_ADS_0121_PDGD'),
	(2, 2021, 'CDS_ADS_0121_SDI')
;

INSERT INTO alunos (nr_rgm, nm_nome, nm_pai, nm_mae, dt_nascimento, id_sexo)
VALUES
	(1, 'Guilherme Alves Lopes'	, 'U...', 'L...', 2000, 'M'),
	(2, 'Fulano de Tal')		, 'Mary', 'John', 1995, 'M'),
	(3, 'Bertrana da Silva')	, 'Lara', 'Joao', 1990, 'F')
;

INSERT INTO matriculas (id, nr_rgm, cd_classe, data_matricula)
VALUES
-- 	matriculas do aluno Guilherme
	(1, 1, 1, '2021/02/02'),
	(2, 1, 2, '2021/04/02'),
-- 	matricula do aluno Fulano, somente na turma CDS_ADS_0121_PDGD
	(1, 2, 1, '2021/02/02'),
-- 	matricula da aluna Bertrana, somente na turma CDS_ADS_0121_SDI
	(1, 3, 2, '2021/04/02')
;

