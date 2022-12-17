      ******************************************************************
      * Author: Tanzim Ahmed Sagar
      * Date: 10.12.2022
      * Purpose: Lab 09
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LAB9.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT INVENT-FILE
               ASSIGN TO '../FILE1.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.

               SELECT INDEXED-INVENT-FILE
               ASSIGN TO '../FILE2.TXT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY IS INVENTORY-ID-INDEXED
               ALTERNATE KEY IS VENDOR-NAME-INDEXED
                   WITH DUPLICATES
               FILE STATUS IS STATUS-FIELD.

       DATA DIVISION.
       FILE SECTION.
       FD INVENT-FILE.
       01 INVENTORY-RECORD-IN.
           05 INVENTORY-ID             PIC X(9).
           05 VENDOR-NAME              PIC X(20).
           05 INVENTORY-DESCRIPTION    PIC X(40).

       FD INDEXED-INVENT-FILE.
       01 INVENTORY-RECORD-IN-INDEXED.
           05 INVENTORY-ID-INDEXED             PIC X(9).
           05 VENDOR-NAME-INDEXED              PIC X(20).
           05 INVENTORY-DESCRIPTION-INDEXED    PIC X(40).
       WORKING-STORAGE SECTION.
       01 EOF-FLAG PIC X.
       01 STATUS-FIELD PIC XX.

       PROCEDURE DIVISION.
       100-CREATE-INVENTORY-FILE.
           PERFORM 101-INITIALIZE-CREATE-FILE.
           PERFORM 102-CREATE-INVENTORY-RECORDS
               UNTIL EOF-FLAG = 'Y'.
           PERFORM 103-TERMINATE-PROGRAM.
             STOP RUN.

           101-INITIALIZE-CREATE-FILE.
               PERFORM 201-OPEN-INV-FILES.

           201-OPEN-INV-FILES.
            OPEN INPUT INVENT-FILE.
            OPEN OUTPUT INDEXED-INVENT-FILE.

           102-CREATE-INVENTORY-RECORDS.
               PERFORM 202-READ-INVENT-FILE.

           202-READ-INVENT-FILE.
               READ INVENT-FILE
                   AT END MOVE 'Y' TO EOF-FLAG
                   NOT AT END PERFORM 203-WRITE-IND-INV-RECORD.

           203-WRITE-IND-INV-RECORD.
               MOVE INVENTORY-RECORD-IN
                       TO INVENTORY-RECORD-IN-INDEXED.
               WRITE INVENTORY-RECORD-IN-INDEXED
                   INVALID KEY
                       DISPLAY 'Invalid Key'
                       DISPLAY 'STATUS-FIELD IS: 'STATUS-FIELD
                       DISPLAY 'Original file Inv-ID is: ' INVENTORY-ID
                   NOT INVALID KEY
                       DISPLAY 'SUCCESS'
                       DISPLAY INVENTORY-RECORD-IN-INDEXED.

           103-TERMINATE-PROGRAM.
               CLOSE INVENT-FILE, INDEXED-INVENT-FILE.

       END PROGRAM LAB9.
