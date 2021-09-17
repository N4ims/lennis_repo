*&---------------------------------------------------------------------*
*& Report z09_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_function_model.


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

WHEN '%'.
    CALL FUNCTION 'S4D400_CALCULATE_PERCENTAGE'
      EXPORTING
        iv_int1          = a
        iv_int2          = b
      IMPORTING
        ev_result        = d
      EXCEPTIONS
        division_by_zero = 1
        OTHERS           = 2
      .
    IF sy-subrc <> 0.
    MESSAGE `Division by Zero` Type `I` Display Like `W`.
    endif.










ENDCASE.
