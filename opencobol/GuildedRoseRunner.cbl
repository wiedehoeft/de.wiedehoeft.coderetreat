      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TextTestFixture.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9(004).
       01 ITEMS. COPY ITEM-COLLECTION.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "OMGHAI"

           MOVE "+5 Dexterity Vest" to name(1)
           MOVE 10 to sell-in(1)
           MOVE 20 to quality(1)

           MOVE "Aged Brie" to name(2)
           MOVE 2 to sell-in(2)
           MOVE +0 to quality(2)

           MOVE "Elixir of the Mongoose" to name(3)
           MOVE 5 to sell-in(3)
           MOVE 7 to quality(3)

           MOVE "Sulfuras, Hand of Ragnaros" to name(4)
           MOVE 0 to sell-in(4)
           MOVE 80 to quality(4)

           MOVE "Sulfuras, Hand of Ragnaros" to name(5)
           MOVE -1 to sell-in(5)
           MOVE 80 to quality(5)


           MOVE "Backstage passes to a TAFKAL80ETC concert" to name(6)
           MOVE 15 to sell-in(6)
           MOVE 20 to quality(6)

           MOVE "Backstage passes to a TAFKAL80ETC concert" to name(7)
           MOVE 10 to sell-in(7)
           MOVE 49 to quality(7)

           MOVE "Backstage passes to a TAFKAL80ETC concert" to name(8)
           MOVE 5 to sell-in(8)
           MOVE 49 to quality(8)

           DISPLAY "-------------DAY 0----------------"
           DISPLAY "name, sellIn, quality"
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER = 9
                DISPLAY
               FUNCTION TRIM(name of item(COUNTER)) ", "
               sell-in of item(COUNTER) ", "
               quality of item(COUNTER)
           END-PERFORM

            CALL "GuildedRose" USING items
            END-CALL

           DISPLAY " "
           DISPLAY "-----------------DAY 1------------------"
           DISPLAY "name, sellIn, quality"
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER = 9
            DISPLAY
              FUNCTION TRIM(name of item(COUNTER)) ", "
              sell-in of ITEM(COUNTER) ", "
              quality of item(COUNTER)
           END-PERFORM

           STOP RUN.
       END PROGRAM TextTestFixture.
