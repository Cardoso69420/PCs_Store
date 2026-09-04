import sqlite3

DB_NAME = "products.db"

conn = sqlite3.connect(DB_NAME)
cur = conn.cursor()

cur.execute("""
CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    price REAL,
    stock INTEGER DEFAULT 0
)
""")

produtos = [
    ('Processor: AMD Ryzen 5 7600X', 165, 10),
    ('CPU Cooler: Thermalright Peerless Assassin 120 SE', 45, 21),
    ('Motherboard: MSI MAG B650 TOMAHAWK WIFI', 180, 34),
    ('Memory (RAM): Corsair Vengeance DDR5 32GB (2x16GB) 6000MHz CL30', 120, 33),
    ('Storage (SSD): Crucial T500 1TB NVMe M.2 SSD', 185, 25),
    ('Graphics Card (GPU): MSI GeForce RTX 4070 Super 12GB', 620, 11),
    ('Power Supply (PSU): Corsair RM750e 750W 80+ Gold', 100, 18),
    ('Case: Corsair 4000D Airflow', 80, 26),
    ('Keyboard: Logitech G413 SE', 45, 55),
    ('Mouse: Logitech G502 HERO', 35, 70),
    ('Headset: HyperX Cloud III', 60, 68),
]

cur.execute("SELECT COUNT(*) FROM products")
if cur.fetchone()[0] == 0:
    cur.executemany(
        "INSERT INTO products (nome, price, stock) VALUES (?, ?, ?)",
        produtos
    )

conn.commit()

print("Todos os produtos:")
for row in cur.execute("SELECT nome, price FROM products"):
    print(row)

print("\nProdutos com stock > 0:")
for row in cur.execute("SELECT * FROM products WHERE stock > 0"):
    print(row)

conn.close()
