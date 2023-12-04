--declarando e inicializando variáveis em momentos distintos
DECLARE @nome VARCHAR(50);
SET @nome = 'cliente';

--escrevendo a variável
PRINT @nome;

--declarando e inicializando variáveis no mesmo momento
DECLARE @outroNome VARCHAR(50) = 'cliente';

--escrevendo a variável
PRINT @outroNome;