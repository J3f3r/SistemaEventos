INSERT INTO tb_participante (nome, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_categoria (descricao) VALUES ('Cursos');
INSERT INTO tb_categoria (descricao) VALUES ('Oficinas práticas');
INSERT INTO tb_categoria (descricao) VALUES ('Palestras');

INSERT INTO tb_bloco (inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z',
                                      TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z', 1);
INSERT INTO tb_bloco (inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z',
                                      TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z', 2);
INSERT INTO tb_bloco (inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z',
                                      TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00Z', 3);

-- Atividade 1: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
-- Atividade 2: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Oficina de GitHub', 'Controle versões de seus projetos', 50.00, 2);
-- Atividade 3: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('O Futuro da IA', 'Tendências e impactos da Inteligência Artificial no mercado de trabalho.', 49.90, 3);
-- Atividade 4: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Segurança Digital', 'Fundamentos para proteger seus dados e infraestrutura contra ataques.', 35.00, 3);
-- Atividade 5: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Liderança Ágil', 'Como guiar equipes em ambientes de alta mudança e incerteza.', 55.50, 3);
-- Atividade 6: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Marketing 5.0', 'A nova era do marketing digital e a integração com o online e offline.', 45.00, 3);
-- Atividade 7: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Saúde Mental no Trabalho', 'Estratégias para equilíbrio e bem-estar em ambientes corporativos.', 29.90, 3);
-- Atividade 8: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Blockchain para Iniciantes', 'Entenda a tecnologia por trás das criptomoedas e seus usos futuros.', 59.90, 3);
-- Atividade 9: Palestra (ID 3)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Produtividade Extrema', 'Técnicas de time management e foco para otimizar seus resultados diários.', 39.90, 3);
-- Atividade 10: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Java Spring Boot Básico', 'Criação de APIs RESTful usando as principais ferramentas do Spring Boot.', 499.00, 1);
-- Atividade 11: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('UX/UI Design Completo', 'Do wireframe ao protótipo final. Aprenda a criar interfaces amigáveis.', 650.00, 1);
-- Atividade 12: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Ciência de Dados com Python', 'Análise de dados, Machine Learning e visualização com bibliotecas Python.', 780.00, 1);
-- Atividade 13: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Banco de Dados SQL Server', 'Administração e otimização de consultas em SQL Server.', 350.00, 1);
-- Atividade 14: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Desenvolvimento Front-end', 'HTML, CSS e JavaScript avançado para sites responsivos modernos.', 520.00, 1);
-- Atividade 15: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Metodologias Ágeis', 'Scrum e Kanban aplicados na gestão de projetos de software.', 410.00, 1);
-- Atividade 16: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Cloud Computing AWS', 'Fundamentos e serviços essenciais da Amazon Web Services.', 899.00, 1);
-- Atividade 17: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Testes Automatizados', 'Criação de testes de unidade e integração com JUnit e Mockito.', 450.00, 1);
-- Atividade 18: Curso (ID 1)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Finanças Pessoais', 'Aprenda a investir e gerenciar seu dinheiro de forma inteligente.', 320.00, 1);
-- Atividade 19: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Workshop Docker e Kubernetes', 'Hands-on: Como conteinerizar e orquestrar aplicações em produção.', 180.00, 2);
-- Atividade 20: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Figma na Prática', 'Criação colaborativa de designs e protótipos de alta fidelidade.', 150.00, 2);
-- Atividade 21: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('SQL Avançado (JOINs e Views)', 'Exercícios práticos para dominar consultas complexas em bancos de dados.', 199.00, 2);
-- Atividade 22: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Introdução ao React.js', 'Construção de um componente funcional do zero com JavaScript.', 220.00, 2);
-- Atividade 23: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Configuração de Redes', 'Laboratório prático de configuração básica de roteadores e switches.', 165.00, 2);
-- Atividade 24: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Git para Colaboração', 'Merge, rebase e resolução de conflitos em projetos de equipe.', 95.00, 2);
-- Atividade 25: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Python Web Scraping', 'Extração de dados da web para análise de mercado e pesquisa.', 250.00, 2);
-- Atividade 26: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Design System', 'Criação de componentes reutilizáveis para consistência de marca.', 140.00, 2);
-- Atividade 27: Oficina Prática (ID 2)
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Análise de Logs', 'Técnicas de monitoramento e detecção de anomalias em logs de servidor.', 175.00, 2);

INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (1, 1);
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (1, 2);
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (2, 1);
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (3, 1);
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (3, 2);
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (4, 1);