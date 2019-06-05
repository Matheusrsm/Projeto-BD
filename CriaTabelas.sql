CREATE TABLE Avaliacao (
    nota NUMBER NOT NULL,
    data DATE NOT NULL,
    id INT NOT NULL,
    comentario VARCHAR(200),
    PRIMARY KEY(id)
);

CREATE TABLE Cliente (
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    sexo CHAR NOT NULL,
    dataNascimento DATE NOT NULL,
    idAvaliacao INT,
    PRIMARY KEY(cpf),
    FOREIGN KEY(idAvaliacao) REFERENCES Avaliacao(id) ON DELETE CASCADE
);

CREATE TABLE Funcionario (
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    salario NUMBER NOT NULL,
    dataNascimento DATE NOT NULL,
    funcao VARCHAR(30) NOT NULL,
    PRIMARY KEY(cpf)
);

CREATE TABLE Quarto (
    cpfCliente VARCHAR(11),
    cpfFuncionario VARCHAR(11),
    valorDiaria NUMBER NOT NULL,
    numero INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    vista NUMBER NOT NULL,
    diaCheckIn DATE,
    diaCheckOut DATE,
    data DATE,
    tipoMantem VARCHAR(30),
    observacao VARCHAR(30),
    PRIMARY KEY(numero),
    FOREIGN KEY(cpfCliente) REFERENCES Cliente(cpf) ON DELETE CASCADE,
    FOREIGN KEY(cpfFuncionario) REFERENCES Funcionario(cpf) ON DELETE CASCADE
);

CREATE TABLE Produto (
    valor NUMBER NOT NULL,
    id INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    numeroQuarto INT,
    dataVende DATE,
    quantidadeVenda INT,
    PRIMARY KEY(id),
    FOREIGN KEY(numeroQuarto) REFERENCES Quarto(numero) ON DELETE CASCADE
);

CREATE TABLE Dependente (
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    dataNascimento DATE NOT NULL,
    cpfCliente VARCHAR(11) NOT NULL,
    PRIMARY KEY(cpf, cpfCliente),
    FOREIGN KEY(cpfCliente) REFERENCES Cliente(cpf) ON DELETE CASCADE
);

CREATE TABLE Hospedagem (
    cpfCliente VARCHAR(11) NOT NULL,
    dataCheckin DATE NOT NULL,
    dataCheckOut DATE NOT NULL,
    numeroQuarto INT NOT NULL,
    PRIMARY KEY(numeroQuarto, cpfCliente),
    FOREIGN KEY(cpfCliente) REFERENCES Cliente(cpf) ON DELETE CASCADE,
    FOREIGN KEY(numeroQuarto) REFERENCES Quarto(numero) ON DELETE CASCADE
);

CREATE TABLE TelefoneCliente (
    cpfCliente VARCHAR(11) NOT NULL,
    numeroTelefone VARCHAR(11) NOT NULL,
    PRIMARY KEY(numeroTelefone, cpfCliente),
    FOREIGN KEY(cpfCliente) REFERENCES Cliente(cpf) ON DELETE CASCADE
);

CREATE TABLE Equipamentos (
    equipamentos VARCHAR(30) NOT NULL,
    numeroQuarto INT NOT NULL,
    PRIMARY KEY(numeroQuarto, equipamentos),
    FOREIGN KEY(numeroQuarto) REFERENCES Quarto(numero) ON DELETE CASCADE
);








