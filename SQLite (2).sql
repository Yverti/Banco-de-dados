

CREATE TABLE Cliente (
  Codigo INT NOT NULL,
  Primary KEY (Codigo)

);

CREATE TABLE VAGA (
  Numero INT NOT NULL,
  Status CHAR (1) DEFAULT 'D',
  PRIMARY KEY (Numero)
  
);

CREATE TABLE MENSALISTA (
  Codigo INT NOT NULL,
  Nome VARCHAR (100) NOT NULL,
  PRIMARY KEY (Codigo),
  FOREIGN KEY (Codigo) REFERENCES Cliente(Codigo)

);

CREATE TABLE AVULSO (
  Codigo INT NOT NULL,
  Placa CHAR(8) NOT NULL,
  Marca VARCHAR (20),
  Cor VARCHAR (20),
  PRIMARY KEY (Codigo),
  FOREIGN KEY (Codigo) REFERENCES Cliente(Codigo)

);


CREATE TABLE Estaciona (
  ID INT NOT NULL,
  Entrada TIMESTAMP NOT NULL,
  Saida TIMESTAMP,
  Numero INT NOT NULL,
  Codigo INT NOT NULL,
  Valor NUMERIC (10,2),
  PRIMARY KEY (ID),
  FOREIGN KEY (Numero) REFERENCES Vaga(Numero),
  FOREIGN KEY (Codigo) REFERENCES Cliente(Codigo)
  
);




















