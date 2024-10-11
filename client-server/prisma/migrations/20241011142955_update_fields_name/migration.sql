/*
  Warnings:

  - You are about to drop the column `messageids` on the `Chat` table. All the data in the column will be lost.
  - You are about to drop the column `userids` on the `Chat` table. All the data in the column will be lost.
  - You are about to drop the column `messageids` on the `Message` table. All the data in the column will be lost.
  - You are about to drop the column `chatids` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `messageids` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Chat" DROP COLUMN "messageids",
DROP COLUMN "userids",
ADD COLUMN     "messageIds" TEXT[],
ADD COLUMN     "userIds" TEXT[];

-- AlterTable
ALTER TABLE "Message" DROP COLUMN "messageids",
ADD COLUMN     "messageIds" TEXT[];

-- AlterTable
ALTER TABLE "User" DROP COLUMN "chatids",
DROP COLUMN "messageids",
ADD COLUMN     "chatiIds" TEXT[],
ADD COLUMN     "messageIds" TEXT[];
