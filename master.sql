-- ===============================
-- MASTER.SQL – Executa tudo
-- ===============================

-- Database
CREATE DATABASE IF NOT EXISTS biblioteca_escolar;
USE biblioteca_escolar;

-- ===============================
-- TABELAS
-- ===============================
CREATE TABLE IF NOT EXISTS Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    serie VARCHAR(20),
    turno VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    ano_publicacao INT
);

CREATE TABLE IF NOT EXISTS Emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_livro INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

-- ===============================
-- INSERTS
-- ===============================
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

-- ===============================
-- SELECTS
-- ===============================
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

-- ===============================
-- UPDATES
-- ===============================
UPDATE Aluno SET serie = '8A' WHERE id_aluno = 1;
UPDATE Livro SET autor = 'Machado A.' WHERE id_livro = 1;
UPDATE Emprestimo SET data_devolucao = '2025-03-12' WHERE id_emprestimo = 1;

-- ===============================
-- DELETES
-- ===============================
DELETE FROM Emprestimo WHERE id_emprestimo = 3;
DELETE FROM Livro WHERE id_livro = 3;
DELETE FROM Aluno WHERE id_aluno = 2;
