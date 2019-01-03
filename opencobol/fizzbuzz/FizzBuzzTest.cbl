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
       01 FIZZ-BUZZ-DATA.    COPY FIZZ-BUZZ-DATA.
       01 EXPECTED           PIC X(9999).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM FIZZ-CONVERSION.
           PERFORM BUZZ-CONVERSION.
           PERFORM FIZZ-BUZZ-CONVERSION.
       STOP RUN.

       FIZZ-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "Fizz Conversion"

      * Arrange
           INITIALIZE FIZZ-BUZZ-DATA
           INITIALIZE EXPECTED
           INITIALIZE CONVERTED
           MOVE 3 TO NUMBER-INPUT

      * Act
           CALL "FizzBuzz" USING FIZZ-BUZZ-DATA
           END-CALL

      * Assert
           MOVE "   1   2Fizz" TO EXPECTED
           CALL "Assertions2" USING CONVERTED EXPECTED
           END-CALL
       EXIT.

       BUZZ-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "Buzz Conversion"

      * Arrange
           INITIALIZE FIZZ-BUZZ-DATA
           INITIALIZE EXPECTED
           INITIALIZE CONVERTED
           MOVE 5 TO NUMBER-INPUT

      * Act
           CALL "FizzBuzz" USING FIZZ-BUZZ-DATA
           END-CALL

      * Assert
           MOVE "   1   2Fizz   4Buzz" TO EXPECTED
           CALL "Assertions2" USING CONVERTED EXPECTED
           END-CALL

       EXIT.

       FIZZ-BUZZ-CONVERSION SECTION.
       DISPLAY " "
       DISPLAY "Fizz Buzz Conversion"

      * Arrange
           INITIALIZE FIZZ-BUZZ-DATA
           INITIALIZE EXPECTED
           INITIALIZE CONVERTED
           MOVE 15 TO NUMBER-INPUT

      * Act
           CALL "FizzBuzz" USING FIZZ-BUZZ-DATA
           END-CALL

      * Assert
           MOVE "   1   2Fizz   4BuzzFizz   7   8FizzBuzz  11Fizz  13  1
      -    "4Fizz-Buzz"
             TO EXPECTED
           CALL "Assertions2" USING CONVERTED EXPECTED
           END-CALL

       EXIT.

       END PROGRAM FIZZBUZZTEST.
