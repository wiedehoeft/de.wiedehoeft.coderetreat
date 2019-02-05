      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ASSERTIONS as "Assertions".
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01 NAME-EQUALS PIC 9(001).
         88 TRUE-VALUE VALUE 1.
         88 FALSE-VALUE VALUE 0.

       01 SELL-IN-EQUALS PIC 9(001).
         88 TRUE-VALUE VALUE 1.
         88 FALSE-VALUE VALUE 0.

       01 QUALITY-EQUALS PIC 9(001).
         88 TRUE-VALUE VALUE 1.
         88 FALSE-VALUE VALUE 0.

       LINKAGE SECTION.
       01 ITEM-GIVEN.    COPY ITEMS.
       01 ITEM-EXPECTED. COPY ITEMS.

       PROCEDURE DIVISION USING ITEM-GIVEN ITEM-EXPECTED.

           MAIN-PROCEDURE.

             SET FALSE-VALUE OF NAME-EQUALS TO TRUE
             SET FALSE-VALUE OF SELL-IN-EQUALS TO TRUE
             SET FALSE-VALUE OF QUALITY-EQUALS TO TRUE

             IF name of ITEM-GIVEN IS = NAME OF ITEM-EXPECTED
               SET TRUE-VALUE OF NAME-EQUALS TO TRUE
             END-IF

             IF sell-in of ITEM-GIVEN IS = sell-in OF ITEM-EXPECTED
               SET TRUE-VALUE OF SELL-IN-EQUALS TO TRUE
             END-IF

             IF quality of ITEM-GIVEN IS = quality OF ITEM-EXPECTED
               SET TRUE-VALUE OF QUALITY-EQUALS TO TRUE
             END-IF

             IF TRUE-VALUE OF NAME-EQUALS AND
                TRUE-VALUE OF SELL-IN-EQUALS AND
                TRUE-VALUE OF QUALITY-EQUALS
               MOVE 0 TO RETURN-CODE
             ELSE
               IF FALSE-VALUE OF NAME-EQUALS
                   DISPLAY "Expected name, " name of ITEM-EXPECTED
                   " but was: " name of ITEM-GIVEN
               END-IF
               IF FALSE-VALUE OF SELL-IN-EQUALS
                   DISPLAY "Expected sell-in, " sell-in of ITEM-EXPECTED
                   " but was: " sell-in of ITEM-GIVEN
               END-IF

               IF FALSE-VALUE OF QUALITY-EQUALS
                   DISPLAY "Expected quality, " quality of ITEM-EXPECTED
                   " but was: " quality of ITEM-GIVEN
               END-IF
               MOVE 8 to RETURN-CODE
             END-IF

            GOBACK.

       END PROGRAM ASSERTIONS.
