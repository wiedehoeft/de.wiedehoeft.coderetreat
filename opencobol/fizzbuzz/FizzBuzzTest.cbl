      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZTEST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-CONVERSION. COPY NUMBER-CONVERSION.
       01 EXPECTED PIC X(9999) OCCURS 9999.
       01 COUNTER PIC 9(004).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM NON-CONVERSION.
           PERFORM FIZZ-CONVERSION.
           PERFORM BUZZ-CONVERSION.
           PERFORM FIZZ-BUZZ-CONVERSION.
       STOP RUN.

       NON-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "No Conversion"

      * Arrange
           MOVE 2 TO MAX-NUMBER

      * Act
           CALL "FizzBuzz" USING NUMBER-CONVERSION
           END-CALL

      * Assert
           MOVE "0001" TO EXPECTED(1)
           MOVE "0002" TO EXPECTED(2)

           PERFORM VARYING COUNTER FROM 1 BY 1
             UNTIL COUNTER > 2

             CALL "Assertions2"
               USING CONVERTED(COUNTER) EXPECTED(COUNTER)
             END-CALL

           END-PERFORM

       EXIT.

       FIZZ-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "Fizz Conversion"

      * Arrange
           MOVE 3 TO MAX-NUMBER

      * Act
           CALL "FizzBuzz" USING NUMBER-CONVERSION
           END-CALL

      * Assert
           MOVE "FIZZ" TO EXPECTED(1)

           CALL "Assertions2"
             USING CONVERTED(3) EXPECTED(1)
           END-CALL

       EXIT.

       BUZZ-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "Buzz Conversion"

      * Arrange
           MOVE 5 TO MAX-NUMBER

      * Act
           CALL "FizzBuzz" USING NUMBER-CONVERSION
           END-CALL

      * Assert
           MOVE "BUZZ" TO EXPECTED(1)

           CALL "Assertions2"
             USING CONVERTED(5) EXPECTED(1)
           END-CALL

       EXIT.

       FIZZ-BUZZ-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "Fizz Buzz Conversion"
      * Arrange
           MOVE 15 TO MAX-NUMBER

      * Act
           CALL "FizzBuzz" USING NUMBER-CONVERSION
           END-CALL

      * Assert
           MOVE "FIZZBUZZ" TO EXPECTED(1)

           CALL "Assertions2"
             USING CONVERTED(15) EXPECTED(1)
           END-CALL

       EXIT.

       END PROGRAM FIZZBUZZTEST.
