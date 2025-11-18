Com certeza\! Criar um `README.md` com *storytelling* é uma ótima maneira de contextualizar seu projeto de exercícios de ORM, mostrando o aprendizado e os desafios superados.

Aqui está um modelo de `README.md` estruturado para o seu projeto de sistema de eventos, focado nos fundamentos do JPA/Hibernate:

-----

## 📜 README: Sistema de Eventos Acadêmicos (Fundamentos JPA/Hibernate)

### 💻 1. O Projeto: ORM na Prática

Este projeto é uma aplicação de *back-end* simples desenvolvida em Java e Spring Boot com o objetivo de **consolidar os fundamentos do Mapeamento Objeto-Relacional (ORM)**, utilizando as especificações JPA (Jakarta Persistence API) e a implementação Hibernate.

O domínio escolhido simula o gerenciamento de um evento acadêmico com participantes, atividades (cursos, palestras, oficinas), categorias e blocos de horários.

-----

### 💡 2. O Porquê: A Ponte Objeto-Relacional

O principal motor deste projeto foi a necessidade de exercitar a criação de uma ponte robusta entre o mundo orientado a objetos (nossas Classes Java) e o mundo relacional (o banco de dados H2/PostgreSQL).

  * **Objetivo Central:** Entender como o JPA/Hibernate transforma as classes, atributos e anotações Java (`@Entity`, `@Id`, `@ManyToOne`, etc.) em comandos SQL DDL (`CREATE TABLE`) e DML (`INSERT`, `SELECT`, etc.).
  * **Foco nos Relacionamentos:** Modelar corretamente as diversas cardinalidades que existem no mundo real: **Um-para-Muitos (1:N)** e **Muitos-para-Muitos (N:M)**.

-----

### 🚧 3. Os Desafios e o Aprendizado

O projeto não se limitou a codificar classes; ele nos forçou a depurar e corrigir inconsistências clássicas do ORM.

#### A. O Desafio do Mapeamento 1:N (Chave Estrangeira)

O principal desafio foi garantir que os relacionamentos $1:N$ (ex: Categoria $\leftrightarrow$ Atividade e Atividade $\leftrightarrow$ Bloco) fossem inseridos corretamente via *seeding* SQL.

  * **Entendimento Reforçado:** No mundo relacional, o lado "Muitos" é sempre o dono da chave estrangeira (FK). Ao usar `import.sql` (SQL puro), é **obrigatório** fornecer o ID da FK, mesmo que o código Java cuide disso em tempo de execução.
      * `tb_atividade` **deve** receber `categoria_id`.
      * `tb_bloco` **deve** receber `atividade_id`.

#### B. A Surpresa da Tabela de Junção Indesejada (`tb_atividade_blocos`)

Durante o desenvolvimento, o Hibernate criou uma tabela chamada `tb_atividade_blocos` (visível no console H2).

  * **Causa:** Mapeamento `OneToMany` incompleto na classe `Atividade`.
  * **Ação Corrigida:** A omissão do atributo `mappedBy` em:
    ```java
    // Antes:
    @OneToMany
    private List<Bloco> blocos = new ArrayList<>();

    // Depois (Solução):
    @OneToMany(mappedBy = "atividade")
    private List<Bloco> blocos = new ArrayList<>();
    ```
  * **Resultado:** Corrigir o mapeamento eliminou a tabela de junção desnecessária, forçando o Hibernate a usar a chave estrangeira (`atividade_id`) já existente na tabela `tb_bloco`, que é o comportamento correto para um relacionamento $1:N$.

-----

### 🏆 4. Resultados e Configuração

O projeto final demonstrou a capacidade de:

  * **Modelar Relações N:M:** Implementado com sucesso entre `Participante` e `Atividade` usando a tabela de junção `tb_participante_atividade`.
  * **Configuração de Entidades:** Uso de `@Entity`, `@Table`, `@Id`, `@GeneratedValue(strategy = GenerationType.IDENTITY)`.
  * **Seeding Consistente:** Criação de um `import.sql` que popula o banco de dados com dados iniciais válidos, respeitando todas as chaves estrangeiras.

#### Configurações Chave

O projeto utiliza as seguintes configurações para garantir um ambiente de desenvolvimento e *seeding* eficiente (usando H2 em memória):

| Propriedade | Valor | Propósito |
| :--- | :--- | :--- |
| `spring.jpa.hibernate.ddl-auto` | `create-drop` | Garante que o banco seja recriado a cada execução, limpando o ambiente e refletindo o `import.sql`. |
| `spring.jpa.show-sql` | `true` | Exibe o SQL gerado pelo Hibernate no console, essencial para aprender e depurar o mapeamento ORM. |
| `spring.jpa.properties.hibernate.format_sql` | `true` | Formata o SQL para melhor legibilidade. |

-----

### 🚀 5. Como Rodar o Projeto

1.  **Clone o repositório:** `https://github.com/J3f3r/SistemaEventos.git`
2.  **Configure o ambiente:** Certifique-se de que o Java 17+ e o Maven estão instalados.
3.  **Execução:** Inicie a aplicação Spring Boot. O Hibernate criará as tabelas e executará o `import.sql` automaticamente.
4.  **Acesse o Console H2:** Se configurado, acesse o console H2 para visualizar a estrutura das tabelas e os dados inseridos.
