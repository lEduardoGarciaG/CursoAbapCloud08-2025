CLASS z_legg_holamundo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_legg_holamundo IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hola Mundo en Abap Cloud' ).
    out->write( 'Achis, que raro esta el clima' ).
  ENDMETHOD.
ENDCLASS.
