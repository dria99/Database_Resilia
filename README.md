# Database Resilia
--

Resilia_Indv Database

Este repositório contém o código SQL para criar e popular um banco de dados chamado "Resilia_Indv". O banco de dados é projetado para armazenar informações sobre empresas parceiras, tecnologias, colaboradores e áreas relacionadas. Abaixo estão as principais informações sobre o banco de dados.
Estrutura do Banco de Dados

*O banco de dados consiste em cinco tabelas:*

    empresas_parceiras:
        id_empresa (INT, Primary Key)
        nome_empresa (VARCHAR(50))
        endereco (VARCHAR(200))
        email (VARCHAR(50))
        telefone (VARCHAR(20))

    tecnologias:
        id_tecnologia (INT, Primary Key)
        nome_tecnologia (VARCHAR(50))
        area_tecnologia (VARCHAR(50))

    tecnologias_empresas:
        id_relacao (INT, Primary Key)
        id_empresa (INT, Foreign Key referenciando empresas_parceiras)
        id_tecnologia (INT, Foreign Key referenciando tecnologias)

    colaboradores:
        id_colaborador (INT, Primary Key)
        nome_colaborador (VARCHAR(100))
        cargo (VARCHAR(50))
        id_empresa (INT, Foreign Key referenciando empresas_parceiras)

    area:
        id_area (INT, Primary Key)
        nome_area (VARCHAR(50))
        id_empresa (INT, Foreign Key referenciando empresas_parceiras)

*Relacionamentos*

    A tabela tecnologias_empresas estabelece uma relação muitos para muitos entre as tabelas empresas_parceiras e tecnologias, utilizando chaves estrangeiras.

    A tabela colaboradores possui uma relação muitos para um com a tabela empresas_parceiras, indicando que um colaborador pertence a uma empresa.

    A tabela area também possui uma relação muitos para um com a tabela empresas_parceiras, indicando que uma área está associada a uma empresa.

*Exemplo de Registros*

#Abaixo estão alguns exemplos de registros inseridos no banco de dados:
--

empresas_parceiras

    (1, 'Empresa de Tecnologia 1', 'Rua Tô Surtando, 456', 'contato@empresadetecnologia1.com', '(21) 22222-3333')
    (2, 'Empresa de Tecnologia 2', 'Avenida Enlouqueci, 789', 'contato@empresadetecnologia2.com', '(11) 55555-6666')

tecnologias

    (1, 'Tecnologia Estanha', 'MobileDev')
    (2, 'Tecnologia de Outro Mundo', 'IA')

tecnologias_empresas

    (1, 1, 1) (Associa Empresa 1 à Tecnologia 1)
    (2, 2, 2) (Associa Empresa 2 à Tecnologia 2)

colaboradores

    (1, 'Elisabete Silva Almeida', 'Desenvolvedor Sênior', 1) (Colaborador na Empresa 1)
    (2, 'Claudio Francisco de Oliveira', 'Analista de Dados Júnior', 2) (Colaborador na Empresa 2)

area

    (1, 'Desenvolvimento', 1) (Área de Desenvolvimento na Empresa 1)
    (2, 'Análise de Dados', 2) (Área de Análise de Dados na Empresa 2)

##Como Utilizar
--

    Execute o script SQL em um sistema de gerenciamento de banco de dados compatível.
    Os dados de exemplo estão incluídos para ilustrar como inserir registros nas tabelas.
    Adapte conforme necessário para atender aos requisitos específicos do seu projeto.

***Sinta-se à vontade para entrar em contato se precisar de mais informações ou assistência.***
