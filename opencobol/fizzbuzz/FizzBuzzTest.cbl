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
       STOP RUN.

       FIZZ-CONVERSION SECTION.
      * Arrange
           INITIALIZE FIZZ-BUZZ-DATA
           MOVE 3 TO NUMBER-INPUT

      * Act
           CALL "FizzBuzz" USING FIZZ-BUZZ-DATA
           END-CALL

      * Assert
           MOVE "   1   2Fizz" TO EXPECTED
           CALL "Assertions2" USING CONVERTED EXPECTED

       EXIT.

       END PROGRAM FIZZBUZZTEST.
