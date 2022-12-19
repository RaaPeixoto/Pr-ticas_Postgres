
CREATE TABLE orders (
	id SERIAL NOT NULL PRIMARY KEY,
    "userId" INTEGER NOT NULL REFERENCES "users"("id"),
    "productId" INTEGER NOT NULL REFERENCES "products"("id"),
    "quantity" INTEGER NOT NULL,
    "orderStatus" TEXT NOT NULL,
    "purchaseDate" TIMESTAMP NOT NULL DEFAULT NOW(),
    adress INTEGER NOT NULL REFERENCES "usersAdress"("id")
);