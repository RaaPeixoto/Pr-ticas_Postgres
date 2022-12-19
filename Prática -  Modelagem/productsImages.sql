CREATE TABLE "productsImages" (
	id SERIAL NOT NULL PRIMARY KEY,
	"productId" INTEGER NOT NULL REFERENCES "products"("id"),
    "imageUrl" TEXT NOT NULL,
    "isMainImage" BOOLEAN NOT NULL
);