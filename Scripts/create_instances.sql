INSERT ALL 
    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
   '12345678901234','Kelsier', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar')

    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
    '12345678901235','Vin', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar') 
    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
    '12345678901236','Eland',(TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar') 
    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
    '12345678901237','Sazed', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar') 
    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
    '12345678901238','TenSoon', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar')
    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
    '12345678901239','Spook', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar')
    INTO FUNCIONARIO (cpf, nome, data_nasc, salario, funcao) VALUES (
    '12345678901230','Brisa', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')) ,100.00, 'trabalhar') 
SELECT  * FROM dual

INSERT ALL
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1A', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1B', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1C', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1D', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1E', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1F', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1G', 'mds', 'so quero pagar por media' ,8.66)
    INTO QUARTO (numero, tipo, vista, valor_diaria) VALUES ('1H', 'mds', 'so quero pagar por media' ,8.66)
SELECT * FROM dual

INSERT ALL
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    1, '12345678901234', '1A', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    2, '12345678901235', '1A', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    3, '12345678901236', '1B', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    4, '12345678901234','1B', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    5, '12345678901237', '1A', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    6, '12345678901238', '1C', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    7, '12345678901230', '1D', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    8, '12345678901234', '1E', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    9, '12345678901234', '1H', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    10, '12345678901234', '1G', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    11, '12345678901234', '1F', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    12, '12345678901235', '1A', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    13, '12345678901239', '1B', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    14, '12345678901239', '1C', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    15, '12345678901238', '1H', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    16, '12345678901236', '1F', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    17, '12345678901235', '1H', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    18, '12345678901239', '1G', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'concerto')
    INTO MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao) VALUES (
    19, '12345678901230', '1B', (TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 'limpeza') 
SELECT * FROM dual 
