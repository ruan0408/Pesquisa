INSERT INTO DEPARTAMENTO (nome) VALUE ('Ciência da Computação');
INSERT INTO DEPARTAMENTO (nome) VALUE ('Estatística');
INSERT INTO DEPARTAMENTO (nome) VALUE ('Matemática');
INSERT INTO DEPARTAMENTO (nome) VALUE ('Matemática Aplicada');

INSERT INTO AREA (nome, departamento_id) VALUES ("Sistemas de Software", 1);
INSERT INTO AREA (nome, departamento_id) VALUES ("Teoria da Computação", 1);
INSERT INTO AREA (nome, departamento_id) VALUES ("Otimização", 1);
INSERT INTO AREA (nome, departamento_id) VALUES ("Inteligência Artificial e Lógica", 1);
INSERT INTO AREA (nome, departamento_id) VALUES ("Visão e Processamento de Imagens", 1);
INSERT INTO AREA (nome, departamento_id) VALUES ("Técnicas e Tecnologias da Computação", 1);
INSERT INTO AREA (nome, departamento_id) VALUES ("Computação Aplicada", 1);

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Banco de Dados", 1, "Nesta área estão sendo pesquisados: extensões de modelos conceituais e técnicas de modelagem de dados; sistemas de índices com \"hashing\" extensível e arvores-B. Em particular estudam-se os problemas de concorrência de acesso e de compactação; a representação de valores vazios ao nível de linguagens de consulta e de implementação, inclusive no modelo de dados não-normalizado. Além disto, pesquisam-se bancos de dados orientados a objetos, tanto em aplicações como em extensões do Modelo Relacional Não-normalizado, e em especial na representação simples de relacionamentos.
Investiga-se também o uso do padrão CORBA e do modelo orientado a objetos padronizado pelo OMG, bem como de sua extensão proposta pelo ODMG, como base para a construção de bancos de dados distribuídos e heterogêneos.

Mais recentemente, começamos a estudar problemas relacionados ao projeto de distribuição de dados em nível conceitual (Modelo Entidade Relacionamento), controle de concorrência e sistemas de Bancos de Dados Ativos, com suporte a regras.

Por fim, um novo campo se abre para a pesquisa, que é o de aplicações de linguística computacional à bancos de dados, na área de geração de consultas em SQL a partir de um subconjunto da linguagem natural.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Computação em Nuvem (Cloud Computing)", 1, "Na pesquisa realizada na área de computação em nuvem são propostosmecanismos para permitir que aplicações sejam executadas de formatransparente e eficiente em nuvens. Esses mecanismos devem fazem parteda infraestrutura da nuvem de modo a permitir que os desenvolvedoresnão precisem se preocupar em monitorar suas aplicações e nem emdefinir em quais recursos das nuvens suas aplicações devem executar.Tarefas como essas (monitoramento e escalonamento) sãodisponibilizadas pela infraestrutura da nuvem como serviços para asaplicações submetidas pelos usuários.

Tópicos relacionados com coreografias de serviços web, um tipo decomposição de serviços, também são estudados a fim de permitir quecoreografias sejam mapeadas para computação em nuvem.

Os principais tópicos de pesquisa são: realização de coreografiassobre nuvens, escalonamento, middleware, adaptação dinâmica,monitoramento, virtualização, garantia de QoS e Internet das coisas.
");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Computação Paralela", 1, "Em anos recentes, está se tornando cada vez mais comum a exploração do uso de agregados ou clusters de computadores de baixo custo para executar aplicações que demandam alto poder computacional, como aquelas encontradas em Bioinformática e Computação Científica. Mesmo para a classe dos chamados supercomputadores, de elevado custo, cerca de dois terços dos sistemas de computação da lista TOP500 são constituídos de clusters.

Ao passo que alguns clusters podem ser reservados e dedicados a aplicações específicas, outros podem consistir de máquinas que são também usadas para outros propósitos, como no caso dos chamados grades oportuninistas (e.g. InteGrade) que exploram os recursos computacionais ociosos de equipamentos já existentes. Podemos enumerara as seguintes linhas de pesquisa.

• Desenvolver algoritmos paralelos escaláveis para problemas básicos em teoria de grafos, e.g. árvore geradora mínima.
• Desenvolver algoritmos paralelos para problemas de processamento de sequências de caracteres.
• Desenvolver aplicações paralelas para estudos climáticos, em especial no modelo OLAM (Ocean Land Atmosphere Model).");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Computação Móvel", 1 , "A área de pesquisa em computação móvel engloba temas ligados a conectividade, mobilidade e limitação de desempenho das unidades móveis. Com relação a conectividade busca-se manter níveis mínimos de qualidade de serviço mesmo com possibilidades de desconexões frequentes. A mobilidade traz desafios ligados à manutenção das conexões e ao roteamento de mensagens, principalmente quando se estudam redes ad-hoc. As limitações dos dispositivos móveis variam desde limitados recursos computacionais, memória reduzida a sérios problemas ligados a economia de energia. Cada um desses temas é bastante amplo e pode ser explorado com diferentes técnicas analíticas e experimentais.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Engenharia de Software", 1, "A pesquisa em Engenharia de Software objetiva oferecer técnicas e ferramentas para embasar o desenvolvimento de software, de uma maneira sistemática, promovendo a qualidade e atendendo aos requisitos dos envolvidos. São conduzidas pesquisas nas diversas atividades que compõe um processo de desenvolvimento, como por exemplo, especificação, análise, projeto, implementação, testes, manutenção e gerência de configuração, e para variados domínios de aplicação, como sistemas web, computação móvel, sistemas colaborativos, sistemas distribuídos etc.

Alguns tópicos investigados na pesquisa em Engenharia de Software no Departamento são: métodos ágeis, software livre, sistemas tolerantes a falha, métodos formais para especificação e verificação de sistemas, computação móvel, desenvolvimento baseado em componentes, linha de produto, arquitetura de software, testes de software, escalabilidade e desenvolvimento de sistemas para Web.");


INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Métodos Ágeis", 1, "Os métodos ágeis de desenvolvimento de software surgiram com uma alternativa aos métodos tradicionais e mais burocráticos de engenharia de software. Neles existe uma mudança de prioridade com relação à certos valores. São eles:

- Software funcionando é mais importante que documentação abrangente;
- Indivíduos e interações são mais importantes que processos e ferramentas;
- Colaboração com o cliente é mais importante que negociação de contratos;
- Adaptação a mudanças é mais importante que seguir um plano.

Dentre os métodos ágeis mais conhecidos podemos citar a Programação Extrema,o Scrum, o Lean Software Development e os diversos métodos da família Crystal. Nossa pesquisa explora vários aspectos do desenvolvimento de software usando métodos ágeis.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Redes de Computadores", 1, "Na pesquisa em redes de computadores são propostos algoritmos e protocolos com o objetivo de garantir qualidade de serviço para as aplicações na Internet. Esses mecanismos podem ser implementados tanto nas aplicações quanto nos dispositivos de interconexão de redes.

Técnicas de análise de desempenho como modelagem analítica, simulação e medição são utilizadas com frequência para avaliar os mecanismos propostos.

Os principais tópicos de pesquisa são: grades computacionais, computação na nuvem, redes P2P, virtualização de redes, redes multimídia, metrologia na Internet, protocolos de roteamento, redes ópticas e redes sem fio.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Sistemas Colaborativos", 1, "A Web hoje é colaborativa. Sites que possibilitavam apenas interações monousuário passaram incorporar recursos voltados para colaboração direta e indireta entre os usuários. Esta mudança de enfoque vem sendo chamada de Web 2.0. Sites de comércio eletrônico, por exemplo, passaram a oferecer para cada produto diversas possibilidade de interação entre usuários, como por exemplo, suporte a avaliação, resenha, troca de mensagens, wiki, compartilhamento de fotos, filtragem colaborativa, recomendação etc. Os sistemas web ficam melhores na medida em que mais usuários interagem e contribuem. Surge uma “inteligência coletiva” a partir da análise das interações entre os usuários.

A área de Sistemas Colaborativos abrange o suporte tecnológico à interação entre um grupo de pessoas. Os estudos da área originaram-se da literatura de CSCW (Computer Supported Cooperative Work). As grandes empresas de tecnologia e institutos de pesquisa montaram grupos específicos para o assunto, como por exemplo, o Microsoft Social Computing Group, o HP Social Computing Lab, o IBM Social Computing Group e o MIT Center for Collective Intelligence.

Sistemas colaborativos são amplamente utilizados por organizações, instituições, grupos, comunidades e na sociedade em geral. Correio eletrônico, mensagem instantânea, bate-papo, videoconferência, blog, compartilhamento de arquivos, editores cooperativos, workflow, sites de relacionamentos e comunidades virtuais são alguns dos sistemas colaborativos que se tornaram populares. Estes sistemas são aplicáveis em diversos setores da sociedade, dando suporte por exemplo ao trabalho em empresas e ao ensino-aprendizagem em escolas. As possibilidades de interação através de sistemas colaborativos aumentam com a popularização das novas mídias de interação, providas pela computação móvel, pela TV digital, pelos mundos virtuais e por dispositivos físicos.

No desenvolvimento de sistemas colaborativos normalmente são necessários programadores qualificados, aptos a lidar com protocolos, conexões, compartilhamento de recursos, concorrência de acesso, transações distribuídas, renderização, sincronização, gerenciamento de sessões etc. Isto limita a quantidade de desenvolvedores atuando na área e desloca a criatividade e os esforços para a criação de soluções para os problemas de natureza técnica de baixo nível, delegando a investigação da interação e o suporte à colaboração para segundo plano. Com isto, mesmo questões bem conhecidas e investigadas pela comunidade de CSCW são deixadas de lado, pois o foco do desenvolvimento é em questões técnicas e não há reuso do suporte computacional à colaboração.

Esta linha de pesquisa objetiva oferecer melhores técnicas e ferramentas para os desenvolvedores de sistemas colaborativos. A pesquisa em Sistemas Colaborativos é altamente multidisciplinar, envolvendo aspectos sociais e técnicos. Diversas sub-áreas da Computação possuem contribuições para a pesquisa em Sistemas Colaborativos: Engenharia de Software, Banco de Dados, Inteligência Artificial, Sistemas de Informação, Computação Gráfica, Interação Humano-Computador, Sistemas Multimídia, Sistemas Distribuídos, entre outras. Estudos da área de Humanas, como Sociologia, Antropologia, Psicologia, Educação e Linguística, também influenciam a pesquisa em Sistemas Colaborativos.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Sistemas Distribuídos", 1, "Em sistemas distribuídos, pesquisa é feita em protocolos de comunicação e distribuição, gerenciamento de aplicações distribuídas, configuração dinâmica de sistemas, algoritmos distribuídos, modelos de programação distribuída, mecanismos de tolerância a falhas, monitoramento, segurança e qualidade de serviço. Esses conceitos são explorados desde um aspecto mais teórico e arquitetural até realizações práticas na forma da implementação de arcabouços de software (frameworks), middleware, sistemas e aplicações distribuídas.

A pesquisa inclui projeto, implementação e avaliação de servidores de aplicação, middleware para grades computacionais e computação na nuvem.

Os algoritmos, protocolos e sistemas de software implementados são avaliados em relação a flexibilidade, extensibilidade, desempenho e escalabilidade através de métricas tanto subjetivas quanto objetivas em experimentos controlados e simulações.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Software Livre", 1, "http://ccsl.ime.usp.br");







INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Combinatória", 2, "A área de Combinatória e Grafos trata de abstrações de certos problemas práticos encontrados na indústria (projetos de chips VLSI, administração de frotas de veículos, sistemas operacionais de computadores, etc.) e em outras áreas da matemática e da pesquisa operacional. Muitos destes problemas podem ser descritos sobre um grafo. Os problemas consistem em encontrar uma configuração ótima (máxima ou mínima, conforme o caso) de um certo tipo no grafo. A dificuldade de todos os problemas de CG está em desenvolver algoritmos eficientes que encontrem a configuração ótima desejada. Para alguns dos problemas, algoritmos eficientes muito interessantes já foram descobertos, mas para muitos outros, a procura por algoritmos eficientes continua. Nosso grupo tem interesse não só nas técnicas mais tradicionais como também em algoritmos paralelos, algoritmos probabilísticos e algoritmos que buscam soluções \"aproximadamente ótimas\". Suspeita-se que para muitos dos problemas não existem algoritmos eficientes. A fundamentação desta suspeita é fornecida pela Teoria da Complexidade Computacional. Uma pergunta básica desta Teoria é \"Que tipos de problemas são intrinsecamente difíceis?\" Esta é uma questão fundamental que tem preocupado um grande número de pesquisadores nos últimos 20 anos.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Criptografia", 2, "http://lsd.ime.usp.br");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Teoria dos Autômatos", 2, "A pesquisa em Teoria dos Autômatos se articula em várias linhas, algumas de caráter estritamente matemático/lógico, outras com vistas ao desenvolvimento concreto de algoritmos.

No primeiro caso temos os vários aspectos do estudo de linguagens, seja pelo lado algébrico, ligado à teoria de semigrupos finitos (estudos do semianel tropical, estudos sobre pseudovariedades de conjuntos e de semigrupos, o problema de Burnside para semigrupos aperiódicos), seja pelo lado da Lógica (caracterização lógica de classes de linguagens).

Algoritmos desenvolvidos a partir de Autômatos têm como tema básico a manipulação de seqüências de símbolos. Suas aplicações estão em busca de padrões em textos, compressão de arquivos e problemas combinatórios em biologia molecular, entre outros. É uma característica básica desses algoritmos sua sólida fundamentação na teoria.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Teoria dos Grafos", 2, "");





INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Otimização Combinatória", 3, "Problemas de Otimização Combinatória ocorrem em áreas tão diversas como projetos de sistemas de distribuição de energia elétrica, posicionamento de satélites, projetos de computadores e de chips VLSI, roteamento ou escalonamento de veículos, alocação de trabalhadores ou máquinas a tarefas, empacotamento de caixas em containers, corte de barras e placas, seqüenciamento de genes e DNA, classificação de plantas e animais, etc. Muitos desses problemas podem ser modelados como problemas de maximizar (ou minimizar) uma função cujas variáveis devem obedecer certas restrições. Encontrar soluções ótimas, ou mesmo aproximadas, para esses tipos de problemas é um desafio nem sempre fácil de ser vencido. Para alguns desses problemas são conhecidos métodos eficientes (rápidos) para se resolvê-los; para outros, métodos de enumeração implícita, relaxação, métodos de planos-de-corte (nem sempre tão rápidos) são alguns dos aplicados com maior sucesso na solução de problemas reais. O grupo de Otimização Combinatória tem interesse no estudo teórico de técnicas para a solução de problemas como os descritos acima, bem como na implementação eficiente de tais técnicas para a solução de problemas reais.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Otimização Contínua", 3, "Otimização é a área de estudo que lida com o problema de encontrar valores para variáveis ou incógnitas que, dentre todos aqueles valores que satisfazem um conjunto dado de restrições, minimizam (ou maximizam) uma função objetivo predefinida. Praticamente toda e qualquer atividade humana pode ser enxergada (modelada) como um problema de otimização ou programação matemática. Dependendo das características das funções empregadas para descrever a função objetivo e as restrições, o problema pode ser fácil ou difícil e existe uma variedade enorme de técnicas que podem ser utilizadas para resolvê-lo.");






INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Inteligência Artificial", 4, "https://www.ime.usp.br/~liamf/");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Lógica Computacional", 4, "https://www.ime.usp.br/~liamf/");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Planejamento Automatizado", 4, "https://www.ime.usp.br/~liamf/");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Ontôlogias e Web Semântica", 4, "https://www.ime.usp.br/~liamf/");




INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Computação Gráfica", 5, "https://www.ime.usp.br/~aef/cgcap-homepage.html");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Processamento de Imagens", 5, "http://escience.ime.usp.br/vision/");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Visão Computacional", 5, "http://escience.ime.usp.br/vision/");




INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Recuperação de Informação", 6, "");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Reconhecimento de Padrões", 6, "http://escience.ime.usp.br/vision/");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Computação Músical", 6, "http://compmus.ime.usp.br");




INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Bioinformática", 7, "http://www.vision.ime.usp.br/creativision/scriptLattes/npb-usp/");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Informática Médica", 7, "");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Informática na Educação", 7, "Nesta linha de pesquisa é investigado o desenvolvimento de ferramentas para o ensino-aprendizagem. Algumas subáreas com pesquisa no departamento são:

Desenvolvimento de ambientes virtuais de aprendizagem (prof. Leonidas Brandão, prof. Carlos Hitoshi Morimoto, prof. Marco A. Gerosa)
Sistemas Tutores Inteligentes (profa. Leliane N. Barros, prof. Leonidas Brandão)
Aprendizagem colaborativa apoiada por computador (prof. Leonidas Brandão, prof. Marco A. Gerosa)
Desenvolvimento de ferramentas para o ensino de áreas específicas, como matemática, introdução à programação de computadores e inteligência artificial.

O IME/USP também é participante do projeto TIDIA-Ae, que visa desenvolver ferramentas para o ensino-aprendizagem eletrônico pela Web, integrando diversos institutos e laboratórios.");

INSERT INTO LINHAPESQUISA (nome, area_id, descricao) VALUES ("Jogos e Entretenimento Digital", 7, "http://www.ime.usp.br/~lidet/");


LOAD DATA LOCAL INFILE 'membrosDcc.csv'
INTO TABLE MEMBRO
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
(codpes, nompes);