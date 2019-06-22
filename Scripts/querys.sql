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
    )
