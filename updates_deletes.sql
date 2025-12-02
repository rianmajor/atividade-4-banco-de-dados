UPDATE Aluno SET serie = '8A' WHERE id_aluno = 1;
UPDATE Livro SET autor = 'Machado A.' WHERE id_livro = 1;
UPDATE Emprestimo SET data_devolucao = '2025-03-12' WHERE id_emprestimo = 1;

DELETE FROM Emprestimo WHERE id_emprestimo = 3;
DELETE FROM Livro WHERE id_livro = 3;
DELETE FROM Aluno WHERE id_aluno = 2;
