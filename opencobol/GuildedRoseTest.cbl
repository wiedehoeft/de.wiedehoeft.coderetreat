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

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

       PERFORM SIMPLE-ITEM
       PERFORM SELLIN-PASSED
       PERFORM QUALITY-IS-ZERO
       PERFORM LEGENDARY-ITEM
       PERFORM AGED-BRIE
       PERFORM AGED-BRIE-ZERO-SELLIN
       PERFORM QUALITY-BORDER
       PERFORM BACKSTAGE-PASS-MORE-THAN10DAYS
       PERFORM BACKSTAGE-PASS-10DAYS
       PERFORM BACKSTAGE-PASS-5DAYS
       PERFORM BACKSTAGE-PASS-0DAYS

       STOP RUN.

           SIMPLE-ITEM SECTION.
           DISPLAY "SIMPLE-ITEM-TEST"
      * Arrange
           MOVE "+5 Dexterity Vest" to name of ITEMS-GIVEN(1)
           MOVE 10 to sell-in of ITEMS-GIVEN(1)
           MOVE 20 to quality of ITEMS-GIVEN(1)

           MOVE "+5 Dexterity Vest" to name of ITEM-EXPECTED
           MOVE 9 to sell-in of ITEM-EXPECTED
           MOVE 19 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           SELLIN-PASSED SECTION.
           DISPLAY "SELLIN-PASSED"
      * Arrange
           MOVE "+5 Dexterity Vest" to name of ITEMS-GIVEN(1)
           MOVE 0 to sell-in of ITEMS-GIVEN(1)
           MOVE 20 to quality of ITEMS-GIVEN(1)

           MOVE "+5 Dexterity Vest" to name of ITEM-EXPECTED
           MOVE -1 to sell-in of ITEM-EXPECTED
           MOVE 18 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           QUALITY-IS-ZERO SECTION.
           DISPLAY "QUALITY-IS-ZERO"
      * Arrange
           MOVE "+5 Dexterity Vest" to name of ITEMS-GIVEN(1)
           MOVE 1 to sell-in of ITEMS-GIVEN(1)
           MOVE 0 to quality of ITEMS-GIVEN(1)

           MOVE "+5 Dexterity Vest" to name of ITEM-EXPECTED
           MOVE 0 to sell-in of ITEM-EXPECTED
           MOVE 0 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           LEGENDARY-ITEM SECTION.
           DISPLAY "LEGENDARY-ITEM"
      * Arrange
           MOVE "Sulfuras, Hand of Ragnaros" to name of ITEMS-GIVEN(1)
           MOVE 6 to sell-in of ITEMS-GIVEN(1)
           MOVE 8 to quality of ITEMS-GIVEN(1)

           MOVE "Sulfuras, Hand of Ragnaros" to name of ITEM-EXPECTED
           MOVE 6 to sell-in of ITEM-EXPECTED
           MOVE 8 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           AGED-BRIE SECTION.
           DISPLAY "AGED-BRIE"
      * Arrange
           MOVE "Aged Brie" to name of ITEMS-GIVEN(1)
           MOVE 6 to sell-in of ITEMS-GIVEN(1)
           MOVE 8 to quality of ITEMS-GIVEN(1)

           MOVE "Aged Brie" to name of ITEM-EXPECTED
           MOVE 5 to sell-in of ITEM-EXPECTED
           MOVE 9 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           AGED-BRIE-ZERO-SELLIN SECTION.
           DISPLAY "AGED-BRIE-ZERO-SELLIN"
      * Arrange
           MOVE "Aged Brie" to name of ITEMS-GIVEN(1)
           MOVE 0 to sell-in of ITEMS-GIVEN(1)
           MOVE 8 to quality of ITEMS-GIVEN(1)

           MOVE "Aged Brie" to name of ITEM-EXPECTED
           MOVE -1 to sell-in of ITEM-EXPECTED
           MOVE 10 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           QUALITY-BORDER SECTION.
           DISPLAY "QUALITY-BORDER"
      * Arrange
           MOVE "Aged Brie" to name of ITEMS-GIVEN(1)
           MOVE 50 to sell-in of ITEMS-GIVEN(1)
           MOVE 50 to quality of ITEMS-GIVEN(1)

           MOVE "Aged Brie" to name of ITEM-EXPECTED
           MOVE 49 to sell-in of ITEM-EXPECTED
           MOVE 50 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           BACKSTAGE-PASS-MORE-THAN10DAYS SECTION.
           DISPLAY "BACKSTAGE-PASS-MORE-THAN10DAYS"
      * Arrange
           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEMS-GIVEN(1)
           MOVE 11 to sell-in of ITEMS-GIVEN(1)
           MOVE 10 to quality of ITEMS-GIVEN(1)

           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEM-EXPECTED
           MOVE 10 to sell-in of ITEM-EXPECTED
           MOVE 11 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           BACKSTAGE-PASS-10DAYS SECTION.
           DISPLAY "BACKSTAGE-PASS-10DAYS"
      * Arrange
           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEMS-GIVEN(1)
           MOVE 10 to sell-in of ITEMS-GIVEN(1)
           MOVE 10 to quality of ITEMS-GIVEN(1)

           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEM-EXPECTED
           MOVE 9 to sell-in of ITEM-EXPECTED
           MOVE 12 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           BACKSTAGE-PASS-5DAYS SECTION.
           DISPLAY "BACKSTAGE-PASS-5DAYS"
      * Arrange
           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEMS-GIVEN(1)
           MOVE 5 to sell-in of ITEMS-GIVEN(1)
           MOVE 10 to quality of ITEMS-GIVEN(1)

           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEM-EXPECTED
           MOVE 4 to sell-in of ITEM-EXPECTED
           MOVE 13 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

           BACKSTAGE-PASS-0DAYS SECTION.
           DISPLAY "BACKSTAGE-PASS-0DAYS"
      * Arrange
           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEMS-GIVEN(1)
           MOVE 0 to sell-in of ITEMS-GIVEN(1)
           MOVE 10 to quality of ITEMS-GIVEN(1)

           MOVE "Backstage passes to a TAFKAL80ETC concert" to name
             of ITEM-EXPECTED
           MOVE -1 to sell-in of ITEM-EXPECTED
           MOVE 0 to quality of ITEM-EXPECTED

      * Act
           CALL "GuildedRose" USING ITEMS-GIVEN
           END-CALL

      * Assert
           CALL "Assertions" USING ITEMS-GIVEN ITEM-EXPECTED
           END-CALL.
           EXIT.

       END PROGRAM GUILDED-ROSE-TEST.
