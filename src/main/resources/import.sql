USE pesquisa;

# SELECT Concat('TRUNCATE TABLE ',table_schema,'.',TABLE_NAME, ';')
# FROM INFORMATION_SCHEMA.TABLES where  table_schema in ('pesquisa');

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE pesquisa.AREA;
TRUNCATE TABLE pesquisa.DEPARTAMENTO;
TRUNCATE TABLE pesquisa.LINHAPESQUISA;
TRUNCATE TABLE pesquisa.LINHAPESQUISA_MEMBRO;
TRUNCATE TABLE pesquisa.MEMBRO;
SET FOREIGN_KEY_CHECKS=1;

INSERT INTO DEPARTAMENTO (nome) VALUE ('Ciência da Computação');
INSERT INTO DEPARTAMENTO (nome) VALUE ('Estatística');
INSERT INTO DEPARTAMENTO (nome) VALUE ('Matemática');
INSERT INTO DEPARTAMENTO (nome) VALUE ('Matemática Aplicada');

INSERT INTO AREA (nome, departamento_id) VALUES ('Sistemas de Software', 1);
INSERT INTO AREA (nome, departamento_id) VALUES ('Teoria da Computação', 1);
INSERT INTO AREA (nome, departamento_id) VALUES ('Otimização', 1);
INSERT INTO AREA (nome, departamento_id) VALUES ('Inteligência Artificial e Lógica', 1);
INSERT INTO AREA (nome, departamento_id) VALUES ('Visão e Processamento de Imagens', 1);
INSERT INTO AREA (nome, departamento_id) VALUES ('Técnicas e Tecnologias da Computação', 1);
INSERT INTO AREA (nome, departamento_id) VALUES ('Computação Aplicada', 1);

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Banco de Dados', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Computação em Nuvem (Cloud Computing)', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Computação Paralela', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Computação Móvel', 1 , '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Engenharia de Software', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Métodos Ágeis', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Redes de Computadores', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Sistemas Colaborativos', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Sistemas Distribuídos', 1, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Software Livre', 1, 'http://ccsl.ime.usp.br');







INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Combinatória', 2, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Criptografia', 2, 'http://lsd.ime.usp.br');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Teoria dos Autômatos', 2, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Teoria dos Grafos', 2, 'lalala');





INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Otimização Combinatória', 3, 'Problemas de Otimização Combinatória ocorrem em áreas tão diversas como projetos de sistemas de distribuição de energia elétrica, posicionamento de satélites, projetos de computadores e de chips VLSI, roteamento ou escalonamento de veículos, alocação de trabalhadores ou máquinas a tarefas, empacotamento de caixas em containers, corte de barras e placas, seqüenciamento de genes e DNA, classificação de plantas e animais, etc. Muitos desses problemas podem ser modelados como problemas de maximizar (ou minimizar) uma função cujas variáveis devem obedecer certas restrições. Encontrar soluções ótimas, ou mesmo aproximadas, para esses tipos de problemas é um desafio nem sempre fácil de ser vencido. Para alguns desses problemas são conhecidos métodos eficientes (rápidos) para se resolvê-los; para outros, métodos de enumeração implícita, relaxação, métodos de planos-de-corte (nem sempre tão rápidos) são alguns dos aplicados com maior sucesso na solução de problemas reais. O grupo de Otimização Combinatória tem interesse no estudo teórico de técnicas para a solução de problemas como os descritos acima, bem como na implementação eficiente de tais técnicas para a solução de problemas reais.');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Otimização Contínua', 3, 'Otimização é a área de estudo que lida com o problema de encontrar valores para variáveis ou incógnitas que, dentre todos aqueles valores que satisfazem um conjunto dado de restrições, minimizam (ou maximizam) uma função objetivo predefinida. Praticamente toda e qualquer atividade humana pode ser enxergada (modelada) como um problema de otimização ou programação matemática. Dependendo das características das funções empregadas para descrever a função objetivo e as restrições, o problema pode ser fácil ou difícil e existe uma variedade enorme de técnicas que podem ser utilizadas para resolvê-lo.');






INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Inteligência Artificial', 4, 'https://www.ime.usp.br/~liamf/');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Lógica Computacional', 4, 'https://www.ime.usp.br/~liamf/');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Planejamento Automatizado', 4, 'https://www.ime.usp.br/~liamf/');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Ontôlogias e Web Semântica', 4, 'https://www.ime.usp.br/~liamf/');




INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Computação Gráfica', 5, 'https://www.ime.usp.br/~aef/cgcap-homepage.html');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Processamento de Imagens', 5, 'http://escience.ime.usp.br/vision/');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Visão Computacional', 5, 'http://escience.ime.usp.br/vision/');




INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Recuperação de Informação', 6, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Reconhecimento de Padrões', 6, 'http://escience.ime.usp.br/vision/');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Computação Músical', 6, 'http://compmus.ime.usp.br');




INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Bioinformática', 7, 'http://www.vision.ime.usp.br/creativision/scriptLattes/npb-usp/');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Informática Médica', 7, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Informática na Educação', 7, '');

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ('Jogos e Entretenimento Digital', 7, 'http://www.ime.usp.br/~lidet/');


INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Alair Pereira do Lago',58335);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Alan Mitchell Durham',86500);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Alfredo Goldman Vel Lejbman',84710);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Ana Cristina Vieira de Melo',2564323);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('André Fujita',3180800);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Arnaldo Mandel',47490);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Carlos Eduardo Ferreira',91288);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Carlos Hitoshi Morimoto',353731);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Cristina Gomes Fernandes',55029);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Daniel Macedo Batista',7410229);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Denis Deratani Mauá',3730790);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Diogo Ferreira da Costa Patrão',3134137);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Ernesto Julian Goldberg Birgin',3223835);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Fabio Kon',84724);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Fernando Mario de Oliveira Filho',3286395);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Flavio Soares Correa da Silva',78352);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('João Eduardo Ferreira',827412);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Jose Coelho de Pina Junior',91267);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Junior Barrera',72450);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Kelly Rosa Braghetto',3150657);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Kunio Okuda',91271);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Leliane Nunes de Barros',771216);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Leonidas de Oliveira Brandão',64801);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Manoel Marcilio Sanches',47614);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Marcel Kenji de Carli Silva',3463382);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Marcel Parolin Jackowski',5340405);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Marcelo Finger',60050);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Marcelo Gomes de Queiroz',1533070);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Marco Aurélio Gerosa',6363816);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Marco Dimas Gubitoso',2090749);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Nami Kobayashi',73882);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Nina Sumiko Tomita Hirata',1620932);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Paulo Andre Vechiatto de Miranda',7782124);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Renata Wassermann',1722571);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Roberto Hirata Junior',2017173);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Roberto Marcondes Cesar Junior',1914321);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Ronaldo Fumio Hashimoto',63092);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Routo Terada',29332);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Walter Figueiredo Mascarenhas',5095062);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Yoshiharu Kohayakawa',88134);
INSERT INTO `MEMBRO` (nompes, codpes) VALUES ('Yoshiko Wakabayashi',47621);



#banco de dados
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (1, 17);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (1, 20);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (1, 27);

INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (2, 14);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (2, 3);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (2, 10);

#redes
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (7, 10);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (7, 24);

INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (11, 40);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (11, 41);
INSERT INTO LINHAPESQUISA_MEMBRO (linhapesquisa_id, membro_id) VALUES (11, 6);