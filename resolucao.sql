-- Desafio 1: Buscar o nome e ano dos filmes.
SELECT Nome, Ano FROM Filmes;

-- Desafio 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano.
SELECT * FROM Filmes
ORDER BY Ano ASC; 

-- Desafio 3: Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração.
SELECT * FROM Filmes WHERE id = 28;

-- Desafio 4: Buscar os filmes lançados em 1997.
SELECT * FROM Filmes WHERE Ano = 1997;

-- Desafio 5: Buscar os filmes lançados APÓS o ano 2000.
SELECT * FROM Filmes WHERE Ano > 2000;

-- Desafio 6: Buscar os filmes com a duração maior que 100 e menor que 150.
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150;

-- Desafio 7: Buscar a quantidade de filmes lançados por ano, agrupando e ordenando pela quantidade decrescente.
SELECT Ano, COUNT(*) AS Qtd
FROM Filmes
GROUP BY Ano
ORDER BY Qtd DESC;

-- Desafio 8: Buscar os Atores do gênero masculino.
SELECT * FROM dbo.Atores
WHERE Genero = 'M';

-- Desafio 9: Buscar as Atrizes do gênero feminino, ordenando pelo primeiro nome.
SELECT * FROM dbo.Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- Desafio 10: Buscar o nome do filme e o gênero correspondente.
SELECT F.Nome, G.Genero FROM Filmes F
LEFT JOIN FilmesGenero FG ON F.Id = FG.IdFilme
LEFT JOIN Generos G ON FG.IdGenero = G.Id;

-- Desafio 11: Buscar o nome do filme e o gênero, filtrando apenas pelo gênero "Mistério".
SELECT F.Nome, G.Genero FROM Filmes F
LEFT JOIN FilmesGenero FG ON F.Id = FG.IdFilme
LEFT JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- Desafio 12: Buscar o nome do filme, o nome dos atores e seus papéis.
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
LEFT JOIN Filmes F ON EF.idFilme = F.id
LEFT JOIN Atores A ON EF.idAtor = A.id;
