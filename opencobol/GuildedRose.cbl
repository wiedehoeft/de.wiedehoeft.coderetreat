       PROGRAM-ID. GildedRose as "GuildedRose".
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9(004).
       01 CURRENT-ITEM. COPY ITEMS.

       01 BACKSTAGE-PASSES PIC X(041) VALUE
           "Backstage passes to a TAFKAL80ETC concert".
       01 SULFURAS PIC X(026) VALUE
           "Sulfuras, Hand of Ragnaros".

       LINKAGE SECTION.
       01 ITEMS. COPY ITEM-COLLECTION.

           PROCEDURE DIVISION USING ITEMS.

           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER = 1000

           MOVE ITEM(COUNTER) TO CURRENT-ITEM

           if name of CURRENT-ITEM not equal "Aged Brie"
               and name of CURRENT-ITEM not equal BACKSTAGE-PASSES
            if quality of CURRENT-ITEM greater than 0
                if name of CURRENT-ITEM not equal SULFURAS
                      PERFORM DECREASE-QUALITY
                end-if
            end-if
           else
             if quality of CURRENT-ITEM is less than 50
               PERFORM INCREASE-QUALITY
               PERFORM BACKSTAGE-PASS-QUALITY-HANDLING
             end-if
           end-if

           if name of CURRENT-ITEM
               not equal SULFURAS and not EQUAL BACKSTAGE-PASSES
            PERFORM DECREASE-SELL-IN
           end-if
           if sell-in of CURRENT-ITEM is less than 0
            if name of CURRENT-ITEM is not equal to "Aged Brie"
             if name of CURRENT-ITEM
                 is not equal to BACKSTAGE-PASSES
                    if quality of CURRENT-ITEM is greater than 0
                        if name of CURRENT-ITEM
                            is equal to SULFURAS
                            PERFORM DECREASE-QUALITY
                        end-if
                    end-if
                end-if
            else
                if quality of CURRENT-ITEM is less than 50
                    PERFORM INCREASE-QUALITY
                end-if
            end-if
        end-if

        MOVE CURRENT-ITEM TO ITEM(COUNTER)
        END-PERFORM.
       goback.

           INCREASE-QUALITY SECTION.
             COMPUTE QUALITY OF CURRENT-ITEM
               = QUALITY OF CURRENT-ITEM + 1
           EXIT.

           DECREASE-QUALITY SECTION.
             COMPUTE QUALITY OF CURRENT-ITEM
               = QUALITY OF CURRENT-ITEM - 1
           EXIT.

           BACKSTAGE-PASS-QUALITY-HANDLING SECTION.
             IF NAME OF CURRENT-ITEM EQUALS BACKSTAGE-PASSES
               if sell-in of CURRENT-ITEM less than 11
                 if quality of CURRENT-ITEM less than 50
                   PERFORM INCREASE-QUALITY
                 end-if
               end-if
               if sell-in of CURRENT-ITEM less than 6
                 if quality  of CURRENT-ITEM less than 50
                   PERFORM INCREASE-QUALITY
                 end-if
               end-if
             PERFORM DECREASE-SELL-IN
             end-if

             IF SELL-IN OF CURRENT-ITEM IS LESS THAN 0
               compute quality of CURRENT-ITEM
                    = quality of CURRENT-ITEM- quality of CURRENT-ITEM
             END-IF
           EXIT.

           DECREASE-SELL-IN SECTION.
             compute sell-in of CURRENT-ITEM = sell-in
               of CURRENT-ITEM - 1
           EXIT.

       end program GildedRose.
