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
       01 DIVISOR-3 PIC 9(001) VALUE 3.
       01 DIVISOR-5 PIC 9(001) VALUE 5.
       01 DIVISION-RESULT PIC 9(004).
       01 REMAINING-3 PIC 9(004).
       01 REMAINING-5 PIC 9(004).

       01 ANY-1 PIC 9(001).

       LINKAGE SECTION.
       01 NUMBER-CONVERSION. COPY NUMBER-CONVERSION.

       PROCEDURE DIVISION USING NUMBER-CONVERSION.
       MAIN-PROCEDURE.

         PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > MAX-NUMBER

           MOVE COUNTER TO DIVISION-RESULT

           PERFORM CHECK-FOR-DIVISOR-3
           PERFORM CHECK-FOR-DIVISOR-5

           PERFORM CREATE-OUTPUT-RESULTS
         END-PERFORM

       GOBACK.

           CHECK-FOR-DIVISOR-3 SECTION.
             DIVIDE DIVISOR-3 INTO DIVISION-RESULT
             GIVING ANY-1 REMAINDER REMAINING-3
           EXIT.

           CHECK-FOR-DIVISOR-5 SECTION.
             DIVIDE DIVISOR-5 INTO DIVISION-RESULT
             GIVING ANY-1 REMAINDER REMAINING-5
           EXIT.

           CREATE-OUTPUT-RESULTS SECTION.
             IF REMAINING-3 = 0 and REMAINING-5 = 0
               STRING "FIZZBUZZ" INTO CONVERTED(COUNTER)

             ELSE IF REMAINING-3 = 0
               STRING "FIZZ" INTO CONVERTED(COUNTER)

               ELSE IF REMAINING-5 = 0
                 STRING "BUZZ" INTO CONVERTED(COUNTER)

                 ELSE
                   STRING COUNTER INTO CONVERTED(COUNTER)
                 END-IF
               END-IF
             END-IF
           EXIT.

       END PROGRAM FIZZBUZZ.
