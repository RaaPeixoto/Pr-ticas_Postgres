
CREATE TABLE products (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	price INTEGER NOT NULL,
    category INTEGER NOT NULL REFERENCES "productsCategories"("id"),
    size INTEGER NOT NULL REFERENCES "productsSize"("id"),

);