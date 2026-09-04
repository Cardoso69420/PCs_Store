# PCs Store — Base de Dados de Produtos

Projeto de aprendizagem em **Python + SQL (SQLite)**. Simula uma loja de componentes de PC com uma base de dados relacional simples.

## Objetivo

Praticar os fundamentos de SQL (`CREATE TABLE`, `INSERT`, `SELECT`, `WHERE`) e a sua integração com Python através do módulo `sqlite3`.

## Estrutura

```
Data Base.sql     -> script SQL original (referência/documentação da estrutura)
setup_db.py       -> cria a base de dados products.db e popula com os produtos
gerir_loja.py     -> menu interativo: listar, adicionar, remover e comprar produtos
products.db       -> ficheiro da base de dados (gerado automaticamente)
```

## Tabela `products`

| Campo | Tipo    | Descrição              |
|-------|---------|-------------------------|
| id    | INTEGER | Chave primária          |
| nome  | TEXT    | Nome do produto          |
| price | REAL    | Preço                   |
| stock | INTEGER | Quantidade em stock      |

## Como usar

1. Correr `setup_db.py` para criar e popular a base de dados:
   ```
   python3 setup_db.py
   ```

2. Correr `gerir_loja.py` para interagir com a loja:
   ```
   python3 gerir_loja.py
   ```

   Menu disponível:
   - **Listar produtos** — mostra todos os produtos e stock atual
   - **Adicionar produto** — insere um novo produto
   - **Remover produto** — apaga um produto pelo ID
   - **Comprar produto** — reduz o stock ao comprar uma quantidade

## Requisitos

- Python 3
- Módulo `sqlite3` (incluído por defeito no Python)

## Estado do projeto

🚧 Em desenvolvimento — este projeto vai continuar a ser atualizado (novas funcionalidades, validações, e possivelmente uma interface gráfica).
