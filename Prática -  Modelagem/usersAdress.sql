
CREATE TABLE "usersAdress" (
	id SERIAL NOT NULL PRIMARY KEY,
    "userId" INTEGER NOT NULL UNIQUE REFERENCES "user"("id"),
	street TEXT NOT NULL,
	number TEXT NOT NULL,
	complement TEXT,
	"CEP" TEXT NOT NULL,
	"city" TEXT NOT NULL 
);