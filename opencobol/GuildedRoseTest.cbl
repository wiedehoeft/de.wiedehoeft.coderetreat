      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GUILDED-ROSE-TEST.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         01 ITEMS-GIVEN. COPY ITEM-COLLECTION.
         01 ITEM-EXPECTED. COPY ITEMS.

         01 NAME-EQUALS PIC 9(001).
           88 TRUE-VALUE VALUE 1.
           88 FALSE-VALUE VALUE 0.

         01 SELL-IN-EQUALS PIC 9(001).
           88 TRUE-VALUE VALUE 1.
           88 FALSE-VALUE VALUE 0.

         01 QUALITY-EQUALS PIC 9(001).
           88 TRUE-VALUE VALUE 1.
           88 FALSE-VALUE VALUE 0.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
      * Arrange
         MOVE "+5 Dexterity Vest" to name of ITEMS-GIVEN(1)
         MOVE 10 to sell-in of ITEMS-GIVEN(1)
         MOVE 20 to quality of ITEMS-GIVEN(1)

         MOVE "Dexterity Vest" to name of ITEM-EXPECTED
         MOVE 3 to sell-in of ITEM-EXPECTED
         MOVE 10 to quality of ITEM-EXPECTED

      * Act
         CALL "GuildedRose" USING ITEMS-GIVEN
         END-CALL

      * Assert
         CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
         END-CALL.
         STOP RUN.

       END PROGRAM GUILDED-ROSE-TEST.
