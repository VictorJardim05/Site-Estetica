-- Criação da tabela Usuarios
CREATE TABLE Usuarios (
    Id_usuario INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(100) NOT NULL,
    Tipo_usuario VARCHAR(50),
    Data_criacao DATETIME DEFAULT GETDATE()
);

-- Criação da tabela Serviços
CREATE TABLE Servicos (
    Id_servico INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10,2) NOT NULL
);

-- Criação da tabela Agendamento
CREATE TABLE Agendamento (
    Id_agendamento INT PRIMARY KEY IDENTITY(1,1),
    Id_usuario INT FOREIGN KEY REFERENCES Usuarios(Id_usuario),
    Id_servico INT FOREIGN KEY REFERENCES Servicos(Id_servico),
    Data_agendamento DATE NOT NULL,
    Horario TIME NOT NULL,
    Servico VARCHAR(100) NOT NULL,
    Local VARCHAR(200),
    Profissional VARCHAR(100),
    Pagamento VARCHAR(50),
    Status VARCHAR(50)
);

-- Criação da tabela Profissional
CREATE TABLE Profissional (
    Id_profissional INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Estado VARCHAR(50)
);

-- Criação da tabela Profissionais_Servicos
CREATE TABLE Profissionais_Servicos (
    Id_profissional_servico INT PRIMARY KEY IDENTITY(1,1),
    Id_servico INT FOREIGN KEY REFERENCES Servicos(Id_servico),
    Id_profissional INT FOREIGN KEY REFERENCES Profissional(Id_profissional)
);

-- Criação da tabela Comentarios
CREATE TABLE Comentarios (
    Id_comentario INT PRIMARY KEY IDENTITY(1,1),
    Id_usuario INT FOREIGN KEY REFERENCES Usuarios(Id_usuario),
    Comentario TEXT
);

-- Criação da tabela Pagamento
CREATE TABLE Pagamento (
    Id_pagamento INT PRIMARY KEY IDENTITY(1,1),
    Id_agendamento INT FOREIGN KEY REFERENCES Agendamento(Id_agendamento),
    Metodo_pagamento VARCHAR(50),
    Status_pagamento VARCHAR(50)
);

-- Criação da tabela Cliente
CREATE TABLE Cliente (
    Nome VARCHAR(100) PRIMARY KEY,
    Id_usuario INT FOREIGN KEY REFERENCES Usuarios(Id_usuario),
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(100) NOT NULL
);
