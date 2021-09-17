*&---------------------------------------------------------------------*
*& Report z09_class
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z09_class.

CLASS lcl_person DEFINITION.

    PUBLIC SECTION.

    TYPES ty_height TYPE p LENGTH 2 DECIMALS 2.

    PRIVATE SECTION.

    DATA first_name TYPE string.
    DATA last_name TYPE string.
    DATA birthdate TYPE string.
    DATA height TYPE ty_height.

    ENDCLASS.



    CLASS lcl_person IMPLEMENTATION.
    ENDCLASS.
