-- Query 08
-- Liste o tipo de manutenção que é mais executado pelos funcionários.

SELECT tipo_manutencao
FROM MANUTENCAO
GROUP BY tipo_manutencao
HAVING COUNT(*) >= all
    ( 
      SELECT COUNT(*)
      FROM MANUTENCAO
      GROUP BY tipo_manutencao  
    );
    
-- Query 13
--Modifique a tabela QUARTO, adicionando uma restrição de integridade que valide se a coluna NUMERO está no formato “YYY-X”, onde X é qualquer caractere maiúsculo de A até Z e YYY são dígitos de 0 a 9.

ALTER TABLE QUARTO ADD CONSTRAINT check_quarto 
    CHECK (REGEXP_LIKE (numero, '^[0-9]{3}-[A-Z]$'));

-- Query 14
-- Crie um trigger que impeça que um cliente faça uma reserva de um quarto no MESMO período de tempo que outra reserva.

CREATE OR REPLACE TRIGGER verificaPeriodoReserva
BEFORE INSERT ON RESERVA
FOR EACH ROW
DECLARE
    v_quarto VARCHAR2(20);
BEGIN

    SELECT numero_quarto INTO v_quarto
    FROM Reserva
    WHERE numero_quarto = :new.numero_quarto AND
          dia_check_in = :new.dia_check_in AND
          dia_check_out = :new.dia_check_out;
    
    EXCEPTION
    WHEN no_data_found THEN
        v_quarto := NULL;
    
    IF (v_quarto IS NOT NULL) THEN
        RAISE_APPLICATION_ERROR (-20202,'Ja existe uma reserva para esse quarto no mesmo periodo de tempo');
    END IF;
          
END verificaPeriodoReserva;
/ 

-- Query 15
-- Crie um trigger que não permita que um cliente se hospede sem reserva.

CREATE OR REPLACE TRIGGER verificaReserva
BEFORE INSERT ON HOSPEDA
FOR EACH ROW
DECLARE
    v_cpf VARCHAR(14);
BEGIN
    
    SELECT cpf_cliente INTO v_cpf
    FROM Reserva r
    WHERE r.cpf_cliente = :new.cpf_cliente AND
          r.numero_quarto = :new.numero_quarto ;
    
    EXCEPTION
    WHEN no_data_found THEN
        v_cpf := NULL;
    
    IF (v_cpf IS NULL) THEN
        RAISE_APPLICATION_ERROR (-20202,'Cliente não tem reserva para este quarto, logo, não poderá ser hospedar.');
    END IF;
END verificaReserva;  
/
-- Query 17
-- Crie uma função chamada calculaMediaAvaliacoesByMes, que deve receber como parâmetro um determinado mês (no padrão: “JAN”, “FEV”, ...) 
-- e retornar a média de todas as avaliações do hotel nesse mës. Coloque no script também o código de como executar a função

CREATE OR REPLACE FUNCTION calculaMediaAvaliacoesByMes (mes IN VARCHAR) 
RETURN NUMBER IS
    media NUMBER;
    mes_num VARCHAR(2);
    BEGIN
        
        IF mes = 'JAN' THEN
            mes_num := '01';
        ELSIF mes = 'FEV' THEN 
            mes_num := '02';
        ELSIF mes = 'MAR' THEN
            mes_num := '03';
        ELSIF mes = 'ABR' THEN
            mes_num := '04';
        ELSIF mes = 'MAI' THEN
            mes_num := '05';
        ELSIF mes = 'JUN' THEN
            mes_num := '06';
        ELSIF mes = 'JUL' THEN
            mes_num := '07';
        ELSIF mes = 'AGO' THEN
            mes_num := '08';
        ELSIF mes = 'SET' THEN
            mes_num := '09';
        ELSIF mes = 'OTU' THEN
            mes_num := '10';
        ELSIF mes = 'NOV' THEN
            mes_num := '11';
        ELSE
            mes_num := '12';
        END IF;
        
        SELECT AVG(nota) INTO media
        FROM Avaliacao
        WHERE REGEXP_LIKE(data, ('^[0-9]{1,2}/' || mes_num));
        
        RETURN media;
END calculaMediaAvaliacoesByMes;
/
SET serveroutput ON;
DECLARE
    m NUMBER;  
BEGIN
    m := calculaMediaAvaliacoesByMes('JUL');
    dbms_output.put_line('media das notas neste mes eh  ' || m);  
END; 
