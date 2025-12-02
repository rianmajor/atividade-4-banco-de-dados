INSERT INTO Aluno (nome, serie, turno) VALUES
('Ana Souza', '7A', 'Manhã'),
('Bruno Lima', '8B', 'Tarde'),
('Carla Dias', '9A', 'Manhã');

INSERT INTO Livro (titulo, autor, ano_publicacao) VALUES
('Dom Casmurro', 'Machado de Assis', 1899),
('Capitães da Areia', 'Jorge Amado', 1937),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943);

INSERT INTO Emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, '2025-03-01', NULL),
(2, 3, '2025-03-02', '2025-03-10'),
(3, 2, '2025-03-05', NULL);
