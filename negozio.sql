--1 Estrazione di tutti i dati relativi ai modelli dei prodotti a catalogo.
  SELECT * from 4CTL_modelli_prodotto;
--2 Visualizzazione di nome e prezzo di tutti i modelli a catalogo.
  SELECT nome, prezzo_listino from 4CTL_modelli_prodotto;
--3 Ricerca di tutti i modelli con prezzo di listino inferiore a 600€.
  SELECT * from 4CTL_modelli_prodotto WHERE prezzo_listino <= 600;
--4 Selezione dei modelli che contengono la stringa ’Samsung’ nel nome.
  SELECT * from 4CTL_modelli_prodotto WHERE nome LIKE 'Samsung%';
--5 Elenco dei clienti il cui nome termina con la lettera ’a’.
  SELECT * from 4CTL_clienti WHERE nome LIKE '%a';
--6 Elenco dei modelli ordinati dal prezzo più elevato al più basso.
  SELECT * from 4CTL_modelli_prodotto order by prezzo_listino desc;
--7 Visualizzazione delle categorie di prodotti disponibili senza ripetizioni.
  SELECT categoria from 4CTL_modelli_prodotto WHERE categoria ;
--8 Estrazione dei primi 10 prodotti arrivati in magazzino in ordine cronologico.
  SELECT * from 4CTL_prodotti order by date limit 10;
--9 Elenco dei clienti ordinati alfabeticamente per cognome e successivamente per nome.
  SELECT * from 4CTL_clienti order by cognome, nome;
--10 Ricerca di tutti gli ordini effettuati nel mese di giugno 2024.
  SELECT * from 4CTL_ordini WHERE data_ordine LIKE '2024-06%';
--11 Elenco dei codici seriali in magazzino associati al nome del relativo modello.
  SELECT cod_seriale, nome from 4CTL_prodotti, 4CTL_modelli_prodotto;
--12 Ricostruzione dello scontrino: ID ordine, cognome cliente, nome modello e seriale venduto.
  SELECT cod_seriale, nome from 4CTL_prodotti, 4CTL_modelli_prodotto;

--13 Visualizzazione dello stato della garanzia per ogni codice seriale venduto.
