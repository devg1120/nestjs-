/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "UserNew" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "UserNew_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PostNew" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT,
    "published" BOOLEAN NOT NULL DEFAULT false,
    "authorId" INTEGER NOT NULL,

    CONSTRAINT "PostNew_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "UserNew_email_key" ON "UserNew"("email");

-- AddForeignKey
ALTER TABLE "PostNew" ADD CONSTRAINT "PostNew_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "UserNew"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
