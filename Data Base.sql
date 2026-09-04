--CREATE TABLE — criar uma tabela--
CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    price REAL,
    stock INTEGER DEFAULT 0
)




--INSERT — adicionar dados--
INSERT INTO products (nome, price, stock) VALUES ('Processor: AMD Ryzen 5 7600X', 165, 10);
INSERT INTO products (nome, price, stock) VALUES ('CPU Cooler: Thermalright Peerless Assassin 120 SE', 45, 21);
INSERT INTO products (nome, price, stock) VALUES ('Motherboard: MSI MAG B650 TOMAHAWK WIFI', 180, 34);
INSERT INTO products (nome, price, stock) VALUES ('Memory (RAM): Corsair Vengeance DDR5 32GB (2x16GB) 6000MHz CL30', 120, 33);
INSERT INTO products (nome, price, stock) VALUES ('Storage (SSD): Crucial T500 1TB NVMe M.2 SSD', 185, 25);
INSERT INTO products (nome, price, stock) VALUES ('Graphics Card (GPU): MSI GeForce RTX 4070 Super 12GB', 620, 11);
INSERT INTO products (nome, price, stock) VALUES ('Power Supply (PSU): Corsair RM750e 750W 80+ Gold', 100, 18);
INSERT INTO products (nome, price, stock) VALUES ('Case: Corsair 4000D Airflow', 80, 26);
INSERT INTO products (nome, price, stock) VALUES ('Keyboard: Logitech G413 SE', 45, 55);
INSERT INTO products (nome, price, stock) VALUES ('Mouse: Logitech G502 HERO', 35, 70);
INSERT INTO products (nome, price, stock) VALUES ('Headset: HyperX Cloud III', 60, 68);

--SELECT — ler dados--
SELECT nome, price FROM products;
SELECT * FROM products;

--WHERE — filtrar--
SELECT * FROM products WHERE stock > 0;

```

pegando neste codigo, cria-me, em python, o um programa que junte esta base de dados