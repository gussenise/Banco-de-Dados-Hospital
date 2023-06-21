-- Tabela de médicos
CREATE TABLE Medico (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(14),
  rg VARCHAR(20),
  endereco VARCHAR(255),
  telefone VARCHAR(20),
  email VARCHAR(255)
);
INSERT INTO Medico (nome, cpf, rg, endereco, telefone, email)
VALUES
  ('Médico 1', '12345678901', '12345', 'Endereço 1', '1234567890', 'medico1@example.com'),
  ('Médico 2', '23456789012', '23456', 'Endereço 2', '2345678901', 'medico2@example.com'),
  ('Médico 3', '34567890123', '34567', 'Endereço 3', '3456789012', 'medico3@example.com'),
  ('Médico 4', '45678901234', '45678', 'Endereço 4', '4567890123', 'medico4@example.com'),
  ('Médico 5', '56789012345', '56789', 'Endereço 5', '5678901234', 'medico5@example.com'),
  ('Médico 6', '67890123456', '67890', 'Endereço 6', '6789012345', 'medico6@example.com'),
  ('Médico 7', '78901234567', '78901', 'Endereço 7', '7890123456', 'medico7@example.com'),
  ('Médico 8', '89012345678', '89012', 'Endereço 8', '8901234567', 'medico8@example.com'),
  ('Médico 9', '90123456789', '90123', 'Endereço 9', '9012345678', 'medico9@example.com'),
  ('Médico 10', '01234567890', '01234', 'Endereço 10', '0123456789', 'medico10@example.com');
-- Tabela de especialidades
CREATE TABLE Especialidade (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255)
);

-- Inserir dados na tabela de especialidades
INSERT INTO Especialidade (nome)
VALUES
  ('Pediatria'),
  ('Clínica Geral'),
  ('Gastroenterologia'),
  ('Dermatologia'),
  ('Pediatria'),
  ('Clínica Geral'),
  ('ginecologista');



-- Tabela de médicos e suas especialidades (relacionamento muitos-para-muitos)
CREATE TABLE Medico_Especialidade (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_medico INT,
  id_especialidade INT,
  FOREIGN KEY (id_medico) REFERENCES Medico(id),
  FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id)
);

-- Tabela de pacientes
CREATE TABLE Paciente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  data_nascimento DATE,
  endereco VARCHAR(255),
  telefone VARCHAR(20),
  email VARCHAR(255),
  cpf VARCHAR(14),
  rg VARCHAR(20)
);

-- Inserir dados na tabela de pacientes
INSERT INTO Paciente (nome, data_nascimento, endereco, telefone, email, cpf, rg)
VALUES
  ('Paciente 1', '1990-01-01', 'Endereço 1', '1234567890', 'paciente1@example.com', '12345678901', '12345'),
  ('Paciente 2', '1985-02-02', 'Endereço 2', '2345678901', 'paciente2@example.com', '23456789012', '23456'),
  ('Paciente 3', '1982-03-03', 'Endereço 3', '3456789012', 'paciente3@example.com', '34567890123', '34567'),
  ('Paciente 4', '1978-04-04', 'Endereço 4', '4567890123', 'paciente4@example.com', '45678901234', '45678'),
  ('Paciente 5', '1975-05-05', 'Endereço 5', '5678901234', 'paciente5@example.com', '56789012345', '56789'),
  ('Paciente 6', '1972-06-06', 'Endereço 6', '6789012345', 'paciente6@example.com', '67890123456', '67890'),
  ('Paciente 7', '1968-07-07', 'Endereço 7', '7890123456', 'paciente7@example.com', '78901234567', '78901'),
  ('Paciente 8', '1965-08-08', 'Endereço 8', '8901234567', 'paciente8@example.com', '89012345678', '89012'),
  ('Paciente 9', '1962-09-09', 'Endereço 9', '9012345678', 'paciente9@example.com', '90123456789', '90123'),
  ('Paciente 10', '1958-10-10', 'Endereço 10', '0123456789', 'paciente10@example.com', '01234567890', '01234'),
  ('Paciente 11', '1955-11-11', 'Endereço 11', '1234567890', 'paciente11@example.com', '12345678901', '12345'),
  ('Paciente 12', '1952-12-12', 'Endereço 12', '2345678901', 'paciente12@example.com', '23456789012', '23456'),
  ('Paciente 13', '1948-01-01', 'Endereço 13', '3456789012', 'paciente13@example.com', '34567890123', '34567'),
  ('Paciente 14', '1945-02-02', 'Endereço 14', '4567890123', 'paciente14@example.com', '45678901234', '45678'),
  ('Paciente 15', '1942-03-03', 'Endereço 15', '5678901234', 'paciente15@example.com', '56789012345', '56789');

-- Tabela de convênios
CREATE TABLE Convenio (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  cnpj VARCHAR(20),
  tempo_carencia INT
);

-- Tabela de consultas
CREATE TABLE Consulta (
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_hora DATETIME,
  id_medico INT,
  id_paciente INT,
  valor_consulta DECIMAL(10,2),
  id_convenio INT,
  num_carteira VARCHAR(50),
  id_especialidade INT,
  FOREIGN KEY (id_medico) REFERENCES Medico(id),
  FOREIGN KEY (id_paciente) REFERENCES Paciente(id),
  FOREIGN KEY (id_convenio) REFERENCES Convenio(id),
  FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id)
);

-- Inserir dados na tabela de consultas
INSERT INTO Consulta (data_hora, id_medico, id_paciente, valor_consulta, id_convenio, num_carteira, id_especialidade)
VALUES
  ('2021-01-01 09:00:00', 1, 1, 100.00, 1, '123456789', 1),
  ('2021-02-01 10:30:00', 2, 2, 120.00, 2, '234567890', 2),
  ('2021-03-01 14:00:00', 3, 3, 150.00, 1, '345678901', 1),
  ('2021-04-01 16:30:00', 4, 4, 80.00, 3, '456789012', 3),
  ('2021-05-01 11:00:00', 5, 5, 90.00, 2, '567890123', 4),
  ('2021-06-01 13:30:00', 6, 6, 110.00, 4, '678901234', 6),
  ('2021-07-01 15:00:00', 7, 7, 100.00, 1, '789012345', 3),
  ('2021-08-01 10:30:00', 8, 8, 120.00, 2, '890123456', 1),
  ('2021-09-01 14:00:00', 9, 9, 150.00, 3, '901234567', 6),
  ('2021-10-01 16:30:00', 10, 10, 80.00, 4, '012345678', 4),
  ('2021-11-01 11:00:00', 1, 11, 90.00, 1, '123456789', 3),
  ('2021-12-01 13:30:00', 2, 12, 110.00, 2, '234567890', 2),
  ('2022-01-01 15:00:00', 3, 13, 100.00, 3, '345678901', 1),
  ('2022-02-01 10:30:00', 4, 14, 120.00, 4, '456789012', 4),
  ('2022-03-01 14:00:00', 5, 15, 150.00, 1, '567890123', 1),
  ('2022-04-01 16:30:00', 6, 1, 80.00, 2, '678901234', 2),
  ('2022-05-01 11:00:00', 7, 2, 90.00, 3, '789012345', 3),
  ('2022-06-01 13:30:00', 8, 3, 110.00, 4, '890123456', 4),
  ('2022-07-01 15:00:00', 9, 4, 100.00, 1, '901234567',5),
  ('2022-08-01 10:30:00', 10, 5, 120.00, 2, '012345678', 7);


-- Tabela de receitas
CREATE TABLE Receita (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_consulta INT,
  medicamento VARCHAR(255),
  quantidade INT,
  instrucoes_uso TEXT,
  FOREIGN KEY (id_consulta) REFERENCES Consulta(id)
);
-- Inserir receituários com dois ou mais medicamentos (no mínimo 10 consultas)
INSERT INTO Receita (id_consulta, medicamento, quantidade, instrucoes_uso)
VALUES
  (1, 'Medicamento 1', 2, 'Tomar duas vezes ao dia'),
  (2, 'Medicamento 2', 1, 'Tomar uma vez ao dia'),
  (3, 'Medicamento 3', 3, 'Tomar três vezes ao dia'),
  (4, 'Medicamento 4', 2, 'Tomar duas vezes ao dia'),
  (5, 'Medicamento 5', 1, 'Tomar uma vez ao dia'),
  (6, 'Medicamento 6', 3, 'Tomar três vezes ao dia'),
  (7, 'Medicamento 7', 2, 'Tomar duas vezes ao dia'),
  (8, 'Medicamento 8', 1, 'Tomar uma vez ao dia'),
  (9, 'Medicamento 9', 3, 'Tomar três vezes ao dia'),
  (10, 'Medicamento 10', 2, 'Tomar duas vezes ao dia');

-- Tabela de internações
CREATE TABLE Internacao (
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_entrada DATE,
  data_prevista_alta DATE,
  data_efetiva_alta DATE,
  procedimentos TEXT,
  id_quarto INT,
  id_paciente INT,
  id_medico INT,
  FOREIGN KEY (id_quarto) REFERENCES Quarto(id),
  FOREIGN KEY (id_paciente) REFERENCES Paciente(id),
  FOREIGN KEY (id_medico) REFERENCES Medico(id)
);

-- Tabela de quartos
CREATE TABLE Quarto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  numeracao VARCHAR(20),
  tipo VARCHAR(50),
  descricao VARCHAR(255),
  valor_diario DECIMAL(10,2)
);

-- Tabela de profissionais de enfermagem
CREATE TABLE Enfermeiro (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(14),
  registro_enfermagem VARCHAR(50)
);

-- Tabela de enfermeiros responsáveis pelas internações (relacionamento muitos-para-muitos)
CREATE TABLE Enfermeiro_Internacao (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_enfermeiro INT,
  id_internacao INT,
  FOREIGN KEY (id_enfermeiro) REFERENCES Enfermeiro(id),
  FOREIGN KEY (id_internacao) REFERENCES Internacao(id)
);
-- Inserir dados na tabela de convênios
INSERT INTO Convenio (nome, cnpj, tempo_carencia)
VALUES
  ('Convênio A', '123456789', 30),
  ('Convênio B', '234567890', 60),
  ('Convênio C', '345678901', 90),
  ('Convênio D', '456789012', 120);

-- Inserir dados na tabela de pacientes
INSERT INTO Paciente (nome, data_nascimento, endereco, telefone, email, cpf, rg)
VALUES
  ('Paciente 1', '1990-01-01', 'Endereço 1', '111111111', 'paciente1@example.com', '11111111111', '1111111'),
  ('Paciente 2', '1992-02-02', 'Endereço 2', '222222222', 'paciente2@example.com', '22222222222', '2222222'),
  ('Paciente 3', '1994-03-03', 'Endereço 3', '333333333', 'paciente3@example.com', '33333333333', '3333333'),
  ('Paciente 4', '1996-04-04', 'Endereço 4', '444444444', 'paciente4@example.com', '44444444444', '4444444'),
  ('Paciente 5', '1998-05-05', 'Endereço 5', '555555555', 'paciente5@example.com', '55555555555', '5555555');

-- Inserir dados na tabela de consultas
INSERT INTO Consulta (data_hora, id_medico, id_paciente, valor_consulta, id_convenio, num_carteira, id_especialidade)
VALUES
  ('2021-01-01 09:00:00', 1, 1, 100.00, 1, '123456789', 1),
  ('2021-02-01 10:30:00', 2, 2, 120.00, 2, '234567890', 2),
  ('2021-03-01 14:00:00', 3, 3, 150.00, 1, '345678901', 1),
  ('2021-04-01 16:30:00', 4, 4, 80.00, 3, '456789012', 3),
  ('2021-05-01 11:00:00', 5, 5, 90.00, 2, '567890123', 4);
  
  -- Alterar tabela de médicos
ALTER TABLE Medico
ADD COLUMN id_convenio INT,
ADD FOREIGN KEY (id_convenio) REFERENCES Convenio(id);

-- Alterar a tabela Internacao para adicionar as chaves estrangeiras
ALTER TABLE Internacao
ADD COLUMN id_medico INT,
ADD COLUMN id_paciente INT,
ADD FOREIGN KEY (id_medico) REFERENCES Medico(id),
ADD FOREIGN KEY (id_paciente) REFERENCES Paciente(id);

-- Inserir tipos de quartos na tabela Quarto
INSERT INTO Quarto (numeracao, tipo, descricao, valor_diario)
VALUES
  ('101', 'Apartamento', 'Quarto individual com banheiro privativo', 200.00),
  ('201', 'Quarto Duplo', 'Quarto compartilhado por duas pessoas', 150.00),
  ('301', 'Enfermaria', 'Quarto compartilhado por múltiplas pessoas', 100.00);

-- Inserir dados de enfermeiros na tabela Enfermeiro
INSERT INTO Enfermeiro (nome, cpf, registro_enfermagem)
VALUES
  ('Enfermeiro 1', '11111111111', 'RE001'),
  ('Enfermeiro 2', '22222222222', 'RE002'),
  ('Enfermeiro 3', '33333333333', 'RE003'),
  ('Enfermeiro 4', '44444444444', 'RE004'),
  ('Enfermeiro 5', '55555555555', 'RE005'),
  ('Enfermeiro 6', '66666666666', 'RE006'),
  ('Enfermeiro 7', '77777777777', 'RE007'),
  ('Enfermeiro 8', '88888888888', 'RE008'),
  ('Enfermeiro 9', '99999999999', 'RE009'),
  ('Enfermeiro 10', '10101010101', 'RE010');

-- Inserir associação de enfermeiros e internações na tabela Enfermeiro_Internacao
INSERT INTO Enfermeiro_Internacao (id_enfermeiro, id_internacao)
VALUES
  (1, 1),
  (1, 2),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 4),
  (4, 3),
  (4, 5),
  (5, 4),
  (5, 6),
  (6, 5),
  (6, 7),
  (7, 6),
  (7, 8),
  (8, 7),
  (8, 9),
  (9, 8),
  (9, 10),
  (10, 9),
  (10, 10);

-- Tabela de tipos de quarto
INSERT INTO Quarto(nome, descricao)
VALUES
  ('Apartamento', 'Quarto individual com banheiro privativo'),
  ('Quarto Duplo', 'Quarto compartilhado por duas pessoas'),
  ('Enfermaria', 'Quarto compartilhado por várias pessoas');

-- Tabela de convênios
INSERT INTO Convenio (nome, cnpj, tempo_carencia)
VALUES
  ('Convênio A', '11111111111111', 30),
  ('Convênio B', '22222222222222', 60),
  ('Convênio C', '33333333333333', 90);

-- Adicionar coluna "em_atividade" na tabela "Medico"
ALTER TABLE Medico
ADD COLUMN em_atividade BOOLEAN NOT NULL DEFAULT TRUE;

-- Atualizar status de atividade de dois médicos para inativo
UPDATE Medico
SET em_atividade = FALSE
WHERE id IN (1, 2);



