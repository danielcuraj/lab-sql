CREATE TABLE treno(
id_treno VARCHAR(6) PRIMARY KEY NOT NULL,
postiMAX INT NOT NULL,
anno INT NOT NULL
);

CREATE TABLE tratta(
id_tratta INT PRIMARY KEY NOT NULL,
stazione_p VARCHAR(50) NOT NULL,
stazione_a VARCHAR(50) NOT NULL,
km INT NOT NULL
);

CREATE TABLE corsa(
id_corsa INT PRIMARY KEY NOT NULL,
cod_treno VARCHAR(6) NOT NULL,
cod_tratta INT NOT NULL,
data DATE NOT NULL,
ora_p TIME NOT NULL,
ora_a TIME NOT NULL,
FOREIGN KEY (cod_treno) REFERENCES treno(id_treno),
FOREIGN KEY (cod_tratta) REFERENCES tratta(id_tratta)
);
