-- AlterTable
ALTER TABLE "Chat" ADD COLUMN     "messageids" TEXT[],
ADD COLUMN     "userids" TEXT[];

-- AlterTable
ALTER TABLE "Message" ADD COLUMN     "messageids" TEXT[];

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "chatids" TEXT[],
ADD COLUMN     "messageids" TEXT[];
