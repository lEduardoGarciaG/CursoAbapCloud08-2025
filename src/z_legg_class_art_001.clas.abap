CLASS z_legg_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_legg_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    data : it_art TYPE STANDARD TABLE OF zlegg_tab_art.
          it_art = VALUE #(
              ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche, con mini colores' color = 'Varios' piezas = 12 stock = 10
                url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_600x.jpg?v=1676577703'
                )
              ( client = sy-mandt id_art = 2 descr = 'Monthly Planner'
                        desc2 = 'Ideal para planificar tus metas y proyectos. Tiene un espacio para 24 meses, para que distribuyas la información como mejor te convenga. Los interiores están impresos en bond blanco de 90g y el cover es soft'
                        color = 'Cafe' piezas = 1 stock = 100
                url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-1_c5c1f533-8cbd-4cab-b7d8-8fe1125dff3c_600x.jpg?v=1700616264'
                )
              ( client = sy-mandt id_art = 3 descr = 'Reglas de Aluminio' desc2 =
'Bonitas, minimalistas y funcionales reglas de 15cm hechas de aluminio. Una regla puede parecer un instrumento simple, pero puede tener encanto y funcionalidad y definitivamente esta regla cumple con su propósito y otros más.'
                 color = 'Gold' piezas = 1 stock = 20
                url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-regla-oro_600x.jpg?v=1626309441'
                )
              ( client = sy-mandt id_art = 4 descr = 'Porta Lapiz' desc2 =
'Este portalápiz, con en forma de bala, es una elegante reinterpretación japonesa de un clásico instrumento de escritura estadounidense, combina comodidad y portabilidad en un diseño inteligente.'
                 color = 'Silver' piezas = 1 stock = 2
                url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-brass-pencil-travelers-company-02_600x.jpg?v=1724199168'
                )
          ).

          INSERT zlegg_tab_art FROM TABLE @it_art.
            if sy-subrc = 0.
                out->write( 'Insert successful' ).
            ELSE.
                out->write( 'Insert wrong' ).
            endif.

  ENDMETHOD.
ENDCLASS.
