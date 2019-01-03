      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ AS "FizzBuzz".

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9(004).
       01 FORMATTED-COUNTER PIC Z(004) OCCURS 9999.
       01 LAST-POS PIC 9(038).

      *Fizz-Buzz-Calculation
       01 DIVISOR PIC 9(004).
       01 DIVISIOR-3 PIC 9(001) VALUE 3.
       01 DIVISIOR-5 PIC 9(001) VALUE 5.
       01 ANY-2 PIC 9(004).
       01 HAS-REMAINING PIC 9(004).

       01 FIZZBUZZ-VALUE PIC 9(001) OCCURS 9999.
           88 HAS-FIZZ VALUE 1.
           88 HAS-BUZZ VALUE 2.

       LINKAGE SECTION.
       01 FIZZ-BUZZ-DATA.    COPY FIZZ-BUZZ-DATA.

       PROCEDURE DIVISION USING FIZZ-BUZZ-DATA.
       MAIN-PROCEDURE.

           PERFORM VARYING COUNTER FROM 1 BY 1
           UNTIL COUNTER > NUMBER-INPUT
               MOVE COUNTER TO DIVISOR
               DIVIDE DIVISIOR-3 INTO DIVISOR GIVING ANY-2 REMAINDER
               HAS-REMAINING
               IF HAS-REMAINING = 0
                   DISPLAY "Dividable by three"
                   SET HAS-FIZZ(COUNTER) TO TRUE
               END-IF

               MOVE COUNTER TO DIVISOR
               DIVIDE DIVISIOR-5 INTO DIVISOR GIVING ANY-2 REMAINDER
               HAS-REMAINING
               IF HAS-REMAINING = 0
                   DISPLAY "Dividable by five"
                   SET HAS-BUZZ(COUNTER) TO TRUE
               END-IF

               MOVE COUNTER TO FORMATTED-COUNTER(COUNTER)
           END-PERFORM

           MOVE 1 TO LAST-POS
           PERFORM VARYING COUNTER FROM 1 BY 1
           UNTIL COUNTER > NUMBER-INPUT
               IF HAS-FIZZ(COUNTER)
                   DISPLAY "Processing Fizz"
                   STRING "Fizz"
                   INTO CONVERTED(LAST-POS:
                       FUNCTION LENGTH(FORMATTED-COUNTER(COUNTER)))

                   MOVE FUNCTION LENGTH(FORMATTED-COUNTER(COUNTER))
                   TO LAST-POS
                   COMPUTE LAST-POS = LAST-POS * COUNTER + 1
               ELSE IF HAS-BUZZ(COUNTER)
                   DISPLAY "Processing Buzz"
                   STRING "Buzz"
                   INTO CONVERTED(LAST-POS:
                       FUNCTION LENGTH(FORMATTED-COUNTER(COUNTER)))

                   MOVE FUNCTION LENGTH(FORMATTED-COUNTER(COUNTER))
                   TO LAST-POS
                   COMPUTE LAST-POS = LAST-POS * COUNTER + 1
                ELSE
                   STRING FORMATTED-COUNTER(COUNTER)
                   INTO CONVERTED(LAST-POS:
                       FUNCTION LENGTH(FORMATTED-COUNTER(COUNTER)))

                   MOVE FUNCTION LENGTH(FORMATTED-COUNTER(COUNTER))
                   TO LAST-POS
                   COMPUTE LAST-POS = LAST-POS * COUNTER + 1
                END-IF
           END-PERFORM

       GOBACK.
       END PROGRAM FIZZBUZZ.
