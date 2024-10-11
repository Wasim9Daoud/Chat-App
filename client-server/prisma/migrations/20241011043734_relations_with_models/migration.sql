/*
  Warnings:

  - You are about to drop the column `messagesids` on the `Chat` table. All the data in the column will be lost.
  - You are about to drop the column `userids` on the `Chat` table. All the data in the column will be lost.
  - You are about to drop the column `chatids` on the `Message` table. All the data in the column will be lost.
  - You are about to drop the column `chatids` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `messageids` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Chat" DROP COLUMN "messagesids",
DROP COLUMN "userids";

-- AlterTable
ALTER TABLE "Message" DROP COLUMN "chatids";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "chatids",
DROP COLUMN "messageids";
