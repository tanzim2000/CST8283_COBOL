      ******************************************************************
      * Author:    Tanzim Ahmed Sagar
      * Date:      21.09.2022
      * Purpose:   A program that produce student records
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STUDENT-REGISTRATION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 STUDENT-RECORD.
           05 studentNumber PIC 9(10).
           05 studentProgram PIC X(8).
           05 studentYear PIC 9(4).
           05 studentData.
               10 studentName.
                   15 title PIC X(6).
                   15 firstName PIC A(15).
                   15 initialName PIC A(2).
                   15 lastName PIC A(28).
               10 studentAddress.
                   15 streetAddress PIC X(25).
                   15 cityName PIC A(15).
                   15 province PIC A(15).
                   15 postalCode PIC X(7).
       PROCEDURE DIVISION.
       END PROGRAM STUDENT-REGISTRATION.
