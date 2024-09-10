Create database Livraria;
use Livraria;
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Senha VARCHAR(20),
    Datacadastro VARCHAR(100)
);
CREATE TABLE Livros (
    LivroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(100),
    Editora VARCHAR(100),
    AnoPublicacao INT,
    Preco DECIMAL(10 , 2 ) NOT NULL,
    Estoque INT NOT NULL
);
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pendente',
    FOREIGN KEY (ClienteID)
        REFERENCES Clientes (ClienteID)
);
CREATE TABLE ItensPedido (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT,
    LivroID INT,
    Quantidade INT NOT NULL,
    FOREIGN KEY (PedidoID)
        REFERENCES Pedidos (PedidoID),
    FOREIGN KEY (LivroID)
        REFERENCES Livros (LivroID)
);
INSERT INTO Clientes (Nome, Endereco, Telefone, Email, Senha, Datacadastro) VALUES
('João Silva', 'Rua A, 123', '(11) 98765-4321', 'joao.silva@example.com', 'senha123', '2024-01-15'),
('Maria Oliveira', 'Rua B, 456', '(21) 91234-5678', 'maria.oliveira@example.com', 'senha456', '2024-02-20'),
('Carlos Pereira', 'Rua C, 789', '(31) 92345-6789', 'carlos.pereira@example.com', 'senha789', '2024-03-10'),
('Ana Santos', 'Rua D, 101', '(41) 93456-7890', 'ana.santos@example.com', 'senha101', '2024-04-05'),
('Pedro Almeida', 'Rua E, 202', '(51) 94567-8901', 'pedro.almeida@example.com', 'senha202', '2024-05-12'),
('Patrícia Costa', 'Rua F, 303', '(61) 95678-9012', 'patricia.costa@example.com', 'senha303', '2024-06-15'),
('Lucas Martins', 'Rua G, 404', '(71) 96789-0123', 'lucas.martins@example.com', 'senha404', '2024-07-22'),
('Fernanda Lima', 'Rua H, 505', '(81) 97890-1234', 'fernanda.lima@example.com', 'senha505', '2024-08-18'),
('Juliana Silva', 'Rua I, 606', '(91) 98901-2345', 'juliana.silva@example.com', 'senha606', '2024-09-05'),
('Roberto Souza', 'Rua J, 707', '(11) 99012-3456', 'roberto.souza@example.com', 'senha707', '2024-10-10'),
('Camila Fernandes', 'Rua K, 808', '(21) 99123-4567', 'camila.fernandes@example.com', 'senha808', '2024-11-12'),
('Mateus Rodrigues', 'Rua L, 909', '(31) 99234-5678', 'mateus.rodrigues@example.com', 'senha909', '2024-12-20'),
('Mariana Almeida', 'Rua M, 1010', '(41) 99345-6789', 'mariana.almeida@example.com', 'senha1010', '2024-01-25'),
('Gustavo Costa', 'Rua N, 1111', '(51) 99456-7890', 'gustavo.costa@example.com', 'senha1111', '2024-02-28'),
('Beatriz Oliveira', 'Rua O, 1212', '(61) 99567-8901', 'beatriz.oliveira@example.com', 'senha1212', '2024-03-15'),
('Felipe Pereira', 'Rua P, 1313', '(71) 99678-9012', 'felipe.pereira@example.com', 'senha1313', '2024-04-20'),
('Isabela Santos', 'Rua Q, 1414', '(81) 99789-0123', 'isabela.santos@example.com', 'senha1414', '2024-05-25'),
('Ricardo Martins', 'Rua R, 1515', '(91) 99890-1234', 'ricardo.martins@example.com', 'senha1515', '2024-06-30'),
('Letícia Lima', 'Rua S, 1616', '(11) 99901-2345', 'leticia.lima@example.com', 'senha1616', '2024-07-10'),
('André Souza', 'Rua T, 1717', '(21) 99112-3456', 'andre.souza@example.com', 'senha1717', '2024-08-05'),
('Tatiane Fernandes', 'Rua U, 1818', '(31) 99223-4567', 'tatiane.fernandes@example.com', 'senha1818', '2024-09-12'),
('Bruno Rodrigues', 'Rua V, 1919', '(41) 99334-5678', 'bruno.rodrigues@example.com', 'senha1919', '2024-10-15'),
('Nathalia Almeida', 'Rua W, 2020', '(51) 99445-6789', 'nathalia.almeida@example.com', 'senha2020', '2024-11-20'),
('Eduardo Costa', 'Rua X, 2121', '(61) 99556-7890', 'eduardo.costa@example.com', 'senha2121', '2024-12-25');

INSERT INTO Livros (Titulo, Autor, Editora, AnoPublicacao, Preco, Estoque) VALUES
('Livro A', 'Autor A', 'Editora A', 2022, 29.90, 100),
('Livro B', 'Autor B', 'Editora B', 2021, 19.90, 150),
('Livro C', 'Autor C', 'Editora C', 2020, 39.90, 200),
('Livro D', 'Autor D', 'Editora D', 2019, 49.90, 50),
('Livro E', 'Autor E', 'Editora E', 2023, 59.90, 30),
('Livro F', 'Autor F', 'Editora F', 2022, 15.90, 70),
('Livro G', 'Autor G', 'Editora G', 2021, 22.90, 90),
('Livro H', 'Autor H', 'Editora H', 2020, 32.90, 60),
('Livro I', 'Autor I', 'Editora I', 2019, 18.90, 80),
('Livro J', 'Autor J', 'Editora J', 2023, 25.90, 100),
('Livro K', 'Autor K', 'Editora K', 2022, 27.90, 110),
('Livro L', 'Autor L', 'Editora L', 2021, 35.90, 140),
('Livro M', 'Autor M', 'Editora M', 2020, 20.90, 50),
('Livro N', 'Autor N', 'Editora N', 2019, 45.90, 90),
('Livro O', 'Autor O', 'Editora O', 2023, 55.90, 40),
('Livro P', 'Autor P', 'Editora P', 2022, 33.90, 70),
('Livro Q', 'Autor Q', 'Editora Q', 2021, 21.90, 60),
('Livro R', 'Autor R', 'Editora R', 2020, 24.90, 80),
('Livro S', 'Autor S', 'Editora S', 2019, 28.90, 90),
('Livro T', 'Autor T', 'Editora T', 2023, 38.90, 100),
('Livro U', 'Autor U', 'Editora U', 2022, 31.90, 120);
INSERT INTO Pedidos (ClienteID, DataPedido, Status) VALUES
(1, '2024-09-01', 'Pendente'),
(2, '2024-09-02', 'Concluído'),
(3, '2024-09-03', 'Cancelado'),
(4, '2024-09-04', 'Pendente'),
(5, '2024-09-05', 'Concluído'),
(6, '2024-09-06', 'Pendente'),
(7, '2024-09-07', 'Cancelado'),
(8, '2024-09-08', 'Concluído'),
(9, '2024-09-09', 'Pendente'),
(10, '2024-09-10', 'Concluído'),
(11, '2024-09-11', 'Pendente'),
(12, '2024-09-12', 'Cancelado'),
(13, '2024-09-13', 'Concluído'),
(14, '2024-09-14', 'Pendente'),
(15, '2024-09-15', 'Concluído'),
(16, '2024-09-16', 'Cancelado'),
(17, '2024-09-17', 'Pendente'),
(18, '2024-09-18', 'Concluído'),
(19, '2024-09-19', 'Pendente'),
(20, '2024-09-20', 'Concluído');
INSERT INTO ItensPedido (PedidoID, LivroID, Quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(2, 4, 2),
(3, 5, 1),
(3, 6, 3),
(4, 7, 2),
(4, 8, 1),
(5, 9, 2),
(5, 10, 1),
(6, 11, 1),
(6, 12, 2),
(7, 13, 1),
(7, 14, 3),
(8, 15, 2),
(8, 16, 1),
(9, 17, 1),
(9, 18, 2),
(10, 19, 1),
(10, 20, 1),
(11, 1, 3),
(11, 2, 2);

drop database livraria;


SELECT count(*)  from clientes;

SELECT Nome, Datacadastro
FROM Clientes
WHERE MONTH(STR_TO_DATE(Datacadastro, '%Y-%m-%d')) = 8;

select Nome,senha
from Clientes
where nome ='joão Silva';

select titulo
from livros

SELECT 
    c.Nome AS NomeCliente,
    l.Titulo AS TituloLivro,
    ip.Quantidade AS QuantidadeEmprestada,
    p.DataPedido AS DataEmprestimo, 
    p.Status AS StatusPedido
FROM 
    Pedidos p
JOIN 
    Clientes c ON p.ClienteID = c.ClienteID
JOIN 
    ItensPedido ip ON p.PedidoID = ip.PedidoID
JOIN 
    Livros l ON ip.LivroID = l.LivroID
ORDER BY 
    c.Nome, p.DataPedido;


SELECT DISTINCT Autor FROM Livros;

SELECT Nome 
FROM Clientes 
WHERE ClienteID NOT IN (SELECT ClienteID FROM Pedidos);


SELECT * FROM Livros
ORDER BY Preco DESC
LIMIT 5;




