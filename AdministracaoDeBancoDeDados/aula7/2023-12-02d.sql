--declarando e inicializando vari�veis em momentos distintos
DECLARE @nome VARCHAR(50);
SET @nome = 'cliente';

--escrevendo a vari�vel
PRINT @nome;

--declarando e inicializando vari�veis no mesmo momento
DECLARE @outroNome VARCHAR(50) = 'cliente';

--escrevendo a vari�vel
PRINT @outroNome;