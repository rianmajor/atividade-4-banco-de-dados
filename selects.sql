SELECT * FROM Aluno;

SELECT titulo, ano_publicacao
FROM Livro
ORDER BY ano_publicacao DESC
LIMIT 2;

SELECT a.nome, l.titulo, e.data_emprestimo
FROM Emprestimo e
JOIN Aluno a ON e.id_aluno = a.id_aluno
JOIN Livro l ON e.id_livro = l.id_livro
WHERE data_devolucao IS NULL;
