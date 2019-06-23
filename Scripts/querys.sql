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
