*&---------------------------------------------------------------------*
*& Report z09_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_calculator.


PARAMETERS a TYPE decfloat16.
PARAMETERS operator.
PARAMETERS b TYPE decfloat16.





DATA d TYPE decfloat16.


CASE operator.

WHEN '+'.
    d = a + b.
    WRITE d.

WHEN '-'.
    d = a - b.
    WRITE d.

WHEN '*'.
    d = a * b.
    WRITE d.

WHEN '/'.

    IF b = 0.
        EXIT.
        WRITE 'Durch 0 darf nicht geteilt werden'.
        ENDIF.


    d = a / b.
    WRITE d.









ENDCASE.
