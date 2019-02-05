       PROGRAM-ID. GildedRose as "GuildedRose".
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9(004).
       01 CURRENT-ITEM. COPY ITEMS.

       LINKAGE SECTION.
       01 ITEMS. COPY ITEM-COLLECTION.

           PROCEDURE DIVISION USING ITEMS.

           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER = 1000

           MOVE ITEM(COUNTER) TO CURRENT-ITEM

           if name of CURRENT-ITEM not equal "Aged Brie"
               and name of CURRENT-ITEM not equal "Backstage passes to a
      -        " TAFKAL80ETC concert"
            if quality of CURRENT-ITEM greater than 0
                if name of CURRENT-ITEM not equal
                    to "Sulfuras, Hand of Ragnaros"
                    compute quality of CURRENT-ITEM
                    = quality OF CURRENT-ITEM - 1
                end-if
            end-if
           else
             if quality of CURRENT-ITEM is less than 50
                compute quality of CURRENT-ITEM
                = quality of CURRENT-ITEM + 1
              if name of CURRENT-ITEM
                  equals "Backstage passes to a TAFKAL80ETC concert"
                    if sell-in of CURRENT-ITEM less than 11
                        if quality of CURRENT-ITEM less than 50
                            compute quality of CURRENT-ITEM
                            = quality of CURRENT-ITEM + 1
                        end-if
                    end-if
                    if sell-in of CURRENT-ITEM less than 6
                        if quality  of CURRENT-ITEM less than 50
                            compute quality of CURRENT-ITEM
                            = quality of CURRENT-ITEM + 1
                        end-if
                    end-if
                end-if
             end-if
           end-if

           if name of CURRENT-ITEM
               not equal "Sulfuras, Hand of Ragnaros"
            compute sell-in of CURRENT-ITEM = sell-in
            of CURRENT-ITEM - 1
           end-if
           if sell-in of CURRENT-ITEM is less than 0
            if name of CURRENT-ITEM is not equal to "Aged Brie"
             if name of CURRENT-ITEM
                 is not equal to "Backstage passes to a TAFKAL80ETC conc
      -           "ert"
                    if quality of CURRENT-ITEM is greater than 0
                        if name of CURRENT-ITEM
                            is equal to "Sulfuras, Hand of Ragnaros"
                            compute quality of CURRENT-ITEM
                            = quality of CURRENT-ITEM - 1
                        end-if
                    end-if
                else
                    compute quality of CURRENT-ITEM
                    = quality of CURRENT-ITEM- quality of CURRENT-ITEM
                end-if
            else
                if quality of CURRENT-ITEM is less than 50
                    compute quality of CURRENT-ITEM
                    = quality of CURRENT-ITEM + 1
                end-if
            end-if
        end-if
        MOVE CURRENT-ITEM TO ITEM(COUNTER)
        END-PERFORM.
       goback.
       end program GildedRose.
