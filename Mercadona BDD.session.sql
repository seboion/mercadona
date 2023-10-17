CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100),
    categories VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    image_url TEXT

);

CREATE TABLE promotions (
    id SERIAL PRIMARY KEY,
    products_id INT REFERENCES products(id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    percentage_off numeric(3, 2) CHECK (percentage_off >= 1 AND percentage_off <= 99) NOT NULL
);

CREATE TABLE admin(
    id SERIAL PRIMARY KEY,
    admin_id VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL 
);