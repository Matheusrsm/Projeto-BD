CREATE TABLE Cliente (
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    sexo CHAR NOT NULL,
    dataNascimento DATE NOT NULL,
    PRIMARY KEY(cpf)
);

CREATE TABLE Avaliacao (
    nota NUMBER NOT NULL,
    data DATE NOT NULL,
    id INT NOT NULL,
    comentario VARCHAR(200),
    cpfCliente VARCHAR(11) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cpfCliente) REFERENCES Cliente(cpf) ON DELETE CASCADE
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
    valorDiaria NUMBER NOT NULL,
    numero INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    vista NUMBER NOT NULL,
    tipoMantem VARCHAR(30),
    observacao VARCHAR(30),
    PRIMARY KEY(numero)
);

CREATE TABLE Produto (
    valor NUMBER NOT NULL,
    id INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
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

CREATE TABLE Reserva (
    cpfCliente VARCHAR(11) NOT NULL,
    diaCheckIn DATE NOT NULL,
    diaCheckOut DATE NOT NULL,
    numeroQuarto INT NOT NULL,
    PRIMARY KEY(numeroQuarto, cpfCliente),
    FOREIGN KEY(cpfCliente) REFERENCES Cliente(cpf) ON DELETE CASCADE,
    FOREIGN KEY(numeroQuarto) REFERENCES Quarto(numero) ON DELETE CASCADE
);

CREATE TABLE Manutencao (
    numeroQuarto INT NOT NULL,
    cpfFuncionario VARCHAR(11) NOT NULL,
    data DATE NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    observacao VARCHAR(30),
    PRIMARY KEY(numeroQuarto, cpfFuncionario),
    FOREIGN KEY(cpfFuncionario) REFERENCES Funcionario(cpf) ON DELETE CASCADE,
    FOREIGN KEY(numeroQuarto) REFERENCES Quarto(numero) ON DELETE CASCADE
);

CREATE TABLE Vendas (
    idProduto INT NOT NULL,
    numeroQuarto INT NOT NULL,
    data DATE NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY(numeroQuarto) REFERENCES Quarto(numero) ON DELETE CASCADE,
    FOREIGN KEY(idProduto) REFERENCES Produto(id) ON DELETE CASCADE
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








