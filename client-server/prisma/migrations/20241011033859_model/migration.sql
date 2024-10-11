-- DropForeignKey
ALTER TABLE "Message" DROP CONSTRAINT "Message_senderId_fkey";

-- AlterTable
ALTER TABLE "Chat" ADD COLUMN     "messagesids" TEXT[],
ADD COLUMN     "userids" TEXT[];

-- AlterTable
ALTER TABLE "Message" ADD COLUMN     "chatids" TEXT[];

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "chatids" TEXT[],
ADD COLUMN     "messageids" TEXT[];

-- CreateTable
CREATE TABLE "_ChatToMessage" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_ChatToMessage_AB_unique" ON "_ChatToMessage"("A", "B");

-- CreateIndex
CREATE INDEX "_ChatToMessage_B_index" ON "_ChatToMessage"("B");

-- AddForeignKey
ALTER TABLE "Message" ADD CONSTRAINT "Message_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ChatToMessage" ADD CONSTRAINT "_ChatToMessage_A_fkey" FOREIGN KEY ("A") REFERENCES "Chat"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ChatToMessage" ADD CONSTRAINT "_ChatToMessage_B_fkey" FOREIGN KEY ("B") REFERENCES "Message"("id") ON DELETE CASCADE ON UPDATE CASCADE;
