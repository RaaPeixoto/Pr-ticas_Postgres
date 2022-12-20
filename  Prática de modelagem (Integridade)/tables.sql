


CREATE TABLE states (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE cities(
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
   "stateId" INTEGER NOT NULL REFERENCES "states"("id")

);

CREATE TABLE customers (
	id SERIAL NOT NULL PRIMARY KEY,
	"fullName" VARCHAR(50) NOT NULL UNIQUE,
	cpf VARCHAR(11) NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL

);
CREATE TYPE "phonesType" AS ENUM ('landline', 'mobile');
CREATE TABLE "customersPhones" (
	id SERIAL NOT NULL PRIMARY KEY,
	"customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
	number VARCHAR(11) NOT NULL,
    type "phonesType" NOT NULL

);

CREATE TABLE "customersAdresses" (
	id SERIAL NOT NULL PRIMARY KEY,
    "customerId" INTEGER NOT NULL UNIQUE REFERENCES "customers"("id"),
    street TEXT NOT NULL,
    number INTEGER NOT NULL,
    complement VARCHAR(50),
    "postalCode" VARCHAR(8) NOT NULL,
    "cityId" INTEGER NOT NULL REFERENCES "cities"("id")
);

CREATE TABLE "bankAccount" (
	id SERIAL NOT NULL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "acountNumber" TEXT NOT NULL UNIQUE, 
    agency TEXT NOT NULL,
    "openDate" DATE NOT NULL DEFAULT NOW(),
    "closeDate" DATE
);
CREATE TYPE "transactionsType" AS ENUM ('deposit', 'withdraw');
CREATE TABLE transactions (
	id SERIAL NOT NULL PRIMARY KEY,
    "bankAccountId"INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    amount INTEGER NOT NULL, aaaaaa
    type "transactionsType"  NOT NULL,
    time TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    description VARCHAR(50) NOT NULL,
    cancelled BOOLEAN NOT NULL 
);


CREATE TABLE "creditCards" (
	id SERIAL NOT NULL PRIMARY KEY,
	"bankAccountId"	INTEGER NOT NULL REFERENCES "bankAccount"(id),
	name VARCHAR(50) NOT NULL,
	number TEXT NOT NULL UNIQUE,
	"securityCode" VARCHAR(3) NOT NULL,
	"expirationMonth" INTEGER NOT NULL,
	"expirationYear" INTEGER NOT NULL,
	password TEXT NOT NULL,
	"limit" INTEGER 
);