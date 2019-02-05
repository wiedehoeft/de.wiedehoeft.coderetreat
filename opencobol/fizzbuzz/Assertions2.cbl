      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ASSERTIONS2 as "Assertions2".
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01 STRING-EQUALS PIC 9(001).
         88 TRUE-VALUE VALUE 1.
         88 FALSE-VALUE VALUE 0.

       01 W-SPACES PIC 9(10).
       01 EXPECTED-STRING-LENGTH PIC 9(10).
       01 GIVEN-STRING-LENGTH PIC 9(10).

       LINKAGE SECTION.
       01 GIVEN.    COPY GIVEN.
       01 EXPECTED. COPY EXPECTED.

       PROCEDURE DIVISION USING GIVEN EXPECTED.

           MAIN-PROCEDURE.
               INITIALIZE STRING-EQUALS

               IF GIVEN IS EQUAL TO EXPECTED
                       SET TRUE-VALUE TO TRUE
               END-IF

               IF NOT TRUE-VALUE
                   PERFORM FORMAT-OUTPUT

                   DISPLAY "Expected result was: "
                   EXPECTED(1:EXPECTED-STRING-LENGTH) ". "

                   DISPLAY "But was:             "
                   GIVEN(1:GIVEN-STRING-LENGTH) ". "

                   MOVE 8 TO RETURN-CODE
               END-IF

            GOBACK.

           FORMAT-OUTPUT SECTION.
               INSPECT FUNCTION REVERSE(EXPECTED) TALLYING
                       W-SPACES FOR LEADING SPACES
                   COMPUTE EXPECTED-STRING-LENGTH =
                   LENGTH OF EXPECTED - W-SPACES

               INSPECT FUNCTION REVERSE(GIVEN) TALLYING
                       W-SPACES FOR LEADING SPACES
                   COMPUTE GIVEN-STRING-LENGTH =
                   LENGTH OF GIVEN - W-SPACES
           EXIT.
       END PROGRAM ASSERTIONS2.
