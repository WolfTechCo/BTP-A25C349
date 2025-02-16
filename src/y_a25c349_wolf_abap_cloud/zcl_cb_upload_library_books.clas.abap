CLASS zcl_cb_upload_library_books DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CB_UPLOAD_LIBRARY_BOOKS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: access_categories TYPE TABLE OF zcb_acc_category,
          categories        TYPE TABLE OF zcb_categories,
          customers         TYPE TABLE OF zcb_customer,
          customers_book    TYPE TABLE OF zcb_cust_books,
          Books             TYPE TABLE OF zcb_books.

******** ZCB_ACC_CATEGORY ********
    "Delete possible entries; insert new entries
    DELETE FROM zcb_acc_category.
    INSERT zcb_acc_category FROM TABLE @( VALUE #(
        ( category_id = 'A' access_type_id = '1' )
        ( category_id = 'B' access_type_id = '1' )
        ( category_id = 'C' access_type_id = '2' )
        ( category_id = 'D' access_type_id = '2' )
        ( category_id = 'E' access_type_id = '2' )
        ( category_id = 'F' access_type_id = '3' )
        ( category_id = 'G' access_type_id = '3' )
        ( category_id = 'H' access_type_id = '4' ) ) ).

    IF sy-subrc IS INITIAL.
      out->write( |Acceso Categorias: { sy-dbcnt } registros insertados| ).
    ENDIF.

******** ZCB_CATEGORIES ********

    "Delete possible entries; insert new entries
    DELETE FROM zcb_categories.
    INSERT zcb_categories FROM TABLE @( VALUE #(
        ( category_id = 'A' description = 'Filosofía, psicología' )
        ( category_id = 'B' description = 'Religión, mitología' )
        ( category_id = 'C' description = 'Ciencias sociales (derecho, política, economía)' )
        ( category_id = 'D' description = 'Ciencias naturales (matemáticas, astronomía, física)' )
        ( category_id = 'E' description = 'Ciencias aplicadas (tecnología, informática)' )
        ( category_id = 'F' description = 'Arte, música, deporte' )
        ( category_id = 'G' description = 'Lengua, poesía, teatro' )
        ( category_id = 'H' description = 'Geografía, historia' ) ) ).

    IF sy-subrc IS INITIAL.
      out->write( |Categorias: { sy-dbcnt } registros insertados| ).
    ENDIF.

******** ZCB_CUSTOMER ********
    "Delete possible entries; insert new entries
    DELETE FROM zcb_customer.
    INSERT zcb_customer FROM TABLE @( VALUE #(
        ( customer_id = '005638984K' access_type_id = '1' name = 'Andrew' Lastname = 'Roberts' email = 'STEPHANIE.ROBERTS@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
        ( customer_id = '049320909Q' access_type_id = '2' name = 'Natalie' Lastname = 'Clark' email = 'PETER.CLARK@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '049573865T' access_type_id = '1' name = 'Faith' Lastname = 'Black' email = 'DAN.BLACK@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
        ( customer_id = '203947278B' access_type_id = '3' name = 'Carolyn' Lastname = 'Wright' email = 'ADRIAN.WRIGHT@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '234234231T' access_type_id = '5' name = 'Penelope' Lastname = 'King' email = 'CAROLINE.KING@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '239482309W' access_type_id = '5' name = 'Julian' Lastname = 'Underwood' email = 'DAN.UNDERWOOD@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
        ( customer_id = '276594867J' access_type_id = '5' name = 'Olivia' Lastname = 'Allan' email = 'OWEN.ALLAN@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '283748858A' access_type_id = '5' name = 'Eric' Lastname = 'Knox' email = 'LILY.KNOX@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
        ( customer_id = '324726345S' access_type_id = '4' name = 'Vanessa' Lastname = 'Baker' email = 'SUE.BAKER@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '340958439D' access_type_id = '5' name = 'Michael' Lastname = 'Short' email = 'JASON.SHORT@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '345093450E' access_type_id = '3' name = 'Sue' Lastname = 'Sanderson' email = 'JOAN.SANDERSON@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '345838534R' access_type_id = '5' name = 'Lily' Lastname = 'Langdon' email = 'ANDREW.LANGDON@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '348947597P' access_type_id = '5' name = 'Lillian' Lastname = 'Davies' email = 'JULIAN.DAVIES@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '378458844M' access_type_id = '5' name = 'Joseph' Lastname = 'Smith' email = 'NATALIE.SMITH@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
        ( customer_id = '423586845G' access_type_id = '5' name = 'Stephanie' Lastname = 'Quinn' email = 'LILLIAN.QUINN@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '430958433A' access_type_id = '2' name = 'Joan' Lastname = 'Short' email = 'WENDY.SHORT@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' )
        ( customer_id = '439853453C' access_type_id = '5' name = 'Wendy' Lastname = 'Newman' email = 'JOSEPH.NEWMAN@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '453532543O' access_type_id = '1' name = 'Neil' Lastname = 'Wilson' email = 'VANESSA.WILSON@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '489632882D' access_type_id = '5' name = 'Sonia' Lastname = 'Welch' email = 'NEIL.WELCH@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/12/41.png' )
        ( customer_id = '540867547H' access_type_id = '5' name = 'Adrian' Lastname = 'Young' email = 'PENELOPE.YOUNG@EMAIL.COM' url = 'https://d4.logaligroup.com/wp-content/uploads/2019/11/24.2.png' ) ) ).

    IF sy-subrc IS INITIAL.
      out->write( |Clientes: { sy-dbcnt } registros insertados| ).
    ENDIF.

******** ZCB_CUST_BOOKS ********
    "Delete possible entries; insert new entries
    DELETE FROM zcb_cust_books.
    INSERT zcb_cust_books FROM TABLE @( VALUE #(
    ( customer_id = '005638984K' book_id = '000001' )
    ( customer_id = '005638984K' book_id = '000020' )
    ( customer_id = '005638984K' book_id = '000021' )
    ( customer_id = '049320909Q' book_id = '000002' )
    ( customer_id = '049573865T' book_id = '000003' )
    ( customer_id = '203947278B' book_id = '000004' )
    ( customer_id = '234234231T' book_id = '000005' )
    ( customer_id = '239482309W' book_id = '000006' )
    ( customer_id = '239482309W' book_id = '000010' )
    ( customer_id = '276594867J' book_id = '000007' )
    ( customer_id = '276594867J' book_id = '000001' )
    ( customer_id = '283748858A' book_id = '000008' )
    ( customer_id = '283748858A' book_id = '000022' )
    ( customer_id = '324726345S' book_id = '000009' )
    ( customer_id = '340958439D' book_id = '000010' )
    ( customer_id = '345093450E' book_id = '000011' )
    ( customer_id = '345838534R' book_id = '000012' )
    ( customer_id = '345838534R' book_id = '000003' )
    ( customer_id = '348947597P' book_id = '000013' )
    ( customer_id = '348947597P' book_id = '000022' )
    ( customer_id = '378458844M' book_id = '000014' )
    ( customer_id = '423586845G' book_id = '000015' )
    ( customer_id = '430958433A' book_id = '000016' )
    ( customer_id = '439853453C' book_id = '000017' )
    ( customer_id = '439853453C' book_id = '000022' )
    ( customer_id = '439853453C' book_id = '000001' )
    ( customer_id = '453532543O' book_id = '000018' )
    ( customer_id = '453532543O' book_id = '000022' )
    ( customer_id = '489632882D' book_id = '000019' )
    ( customer_id = '540867547H' book_id = '000020' ) ) ).

******** ZCB_BOOKS ********
    "Delete possible entries; insert new entries
    DELETE FROM zcb_books.
    INSERT zcb_books FROM TABLE @( VALUE #(
        ( book_id = '000001' category_id = 'A' title = 'Diccionario de los sentimientos' author = 'CAGIGAL, Jose Maria' publisher = 'ANAGRAMA' languaje = 'S' num_pages = 350 price = '84.99' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000002' category_id = 'A' title = 'La selva del lenguaje' author = 'Hoagland , M.' publisher = 'LATERZ A' languaje = 'S' num_pages = 486 price = 146 currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000027' category_id = 'C' title = 'Camino al éxito' author = 'Hoagland , M.' publisher = 'LATERZ A' languaje = 'S' num_pages = 486 price = 146 currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000028' category_id = 'E' title = 'La historia de los Andes' author = 'Hoagland , M.' publisher = 'LATERZ A' languaje = 'S' num_pages = 486 price = 146 currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000029' category_id = 'G' title = 'El Alquimista' author = 'Hoagland , M.' publisher = 'LATERZ A' languaje = 'S' num_pages = 486 price = 146 currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000003' category_id = 'A' title = 'Ética Para Náufragos' author = 'Vallejo- Nágera, Juan' publisher = 'LA SOCIAL' languaje = 'S' num_pages = 236 price = 35 currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000004' category_id = 'B' title = 'La Sociedad Global' author = 'Lane, Frank WW' publisher = 'JOAQUIN MORTIZ' languaje = 'S' num_pages = 189 price = '18.5' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000005' category_id = 'B' title = 'Evangelio de San Pablo' author = 'DICKSON, David' publisher = 'EDIBESA' languaje = 'S' num_pages = 475 price = '25.1' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000006' category_id = 'B' title = 'El Profeta: El jardin del Profeta' author = 'Araujo, Joaquín' publisher = 'ABE BOOKS' languaje = 'S' num_pages = 750 price = '110.05' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000007' category_id = 'B' title = 'Your Growing Child and Religion' author = 'Luka Brajnovic' publisher = 'KELVIN BOOKS' languaje = 'E' num_pages = 380 price = '65.49' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000008' category_id = 'B' title = 'Carta a la Familias' author = 'Sastre, José Luis' publisher = 'PPC' languaje = 'S' num_pages = 265 price = '19.99' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000009' category_id = 'C' title = 'The language of science O' author = 'MANIQUE, John' publisher = 'SALVAR EDICION' languaje = 'E' num_pages = 125 price = '14.99' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000010' category_id = 'C' title = 'Energy in Evolution' author = 'Meade, J. E.' publisher = 'ROW' languaje = 'E' num_pages = 276 price = '39.99' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000011' category_id = 'D' title = 'Analisis Numerico' author = 'Timothy Sauer' publisher = 'Addison-wesley' languaje = 'E' num_pages = 390 price = '54.95' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000012' category_id = 'D' title = 'Algebra Matricial' author = 'Jose manuel Gamboa' publisher = 'Anaya' languaje = 'S' num_pages = 160 price = '8.85' currency = 'EUR' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000013' category_id = 'D' title = 'Matematicas Galdos' author = 'VV.A.A.' publisher = 'Cultural' languaje = 'S' num_pages = 220 price = 30 currency = 'EUR' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000014' category_id = 'E' title = 'Un pequeño pasa para un hombre' author = 'Rafael Clemente' publisher = 'Cúpula' languaje = 'S' num_pages = 328 price = '18.52' currency = 'EUR' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000015' category_id = 'E' title = 'Mecánica de Materiales' author = 'John T. DeWolf' publisher = 'MCGRAW-HILL' languaje = 'E' num_pages = 635 price = '62.51' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000016' category_id = 'E' title = 'Fundamentos de electricidad' author = 'Jorge López Crespo' publisher = 'Thomson Paraninfo' languaje = 'S' num_pages = 334 price = '30.4' currency = 'EUR' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000017' category_id = 'F' title = 'La popularización del deporte' author = 'García Ferrando, Manuel' publisher = 'Centro de Investig.' languaje = 'S' num_pages = 180 price = 19 currency = 'EUR' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000018' category_id = 'F' title = 'Ideal democrático y bienestar personal' author = 'Llopis Goig, Ramón' publisher = 'Centro de Investig.' languaje = 'S' num_pages = 268 price = '9.5' currency = 'EUR' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000019' category_id = 'F' title = '14 canciones. El viaje del elefante' author = 'Pastor, Luis' publisher = 'El Ángel Caído' languaje = 'S' num_pages = 48 price = 21 currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000020' category_id = 'F' title = '4 notas de jazz' author = 'Fernández Martínez, Gema' publisher = 'ECU' languaje = 'S' num_pages = 250 price = 10 currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000021' category_id = 'F' title = 'A mil besos. Canciones y poemas' author = 'Cohen, Leonard' publisher = 'Visor Libros' languaje = 'E' num_pages = 250 price = 16 currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000022' category_id = 'G' title = 'Nada tan amargo: Seis poetas Inglesas' author = 'VV.A.A.' publisher = 'DESVELO EDICIONES' languaje = 'S' num_pages = 208 price = '17.1' currency = 'EUR' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000023' category_id = 'G' title = 'Poemas' author = 'Maria Zambrano' publisher = 'S.L. EDICIONES' languaje = 'S' num_pages = 212 price = '15.1' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000024' category_id = 'H' title = 'Atlas de los exploradores' author = 'VV.A.A.' publisher = 'PLANETA' languaje = 'S' num_pages = 320 price = '34.15' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000025' category_id = 'H' title = 'El dominio mundial' author = 'Pedro Baños' publisher = 'Ariel' languaje = 'S' num_pages = 368 price = '22.7' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000026' category_id = 'H' title = 'Historia Latinoamericana 1700-2005' author = 'Teresa Eggers Brass' publisher = 'publisher MAIPUE' languaje = 'S' num_pages = 620 price = '11.39' currency = 'USD' format_type = 'E' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000071' category_id = 'G' title = 'Los heraldos negros' author = 'César Vallejo' publisher = 'Peisa' languaje = 'S' num_pages = 128 price = 23 currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' )
        ( book_id = '000072' category_id = 'G' title = 'Aves sin nido' author = 'Clorinda Matto de Turner' publisher = 'Visor Libros' languaje = 'S' num_pages = 356 price = '34.15' currency = 'USD' format_type = 'P' url =
        'https://contrapunto.cl/cdn/shop/files/26512.jpg?v=1725988793' ) ) ).

    IF sy-subrc IS INITIAL.
      out->write( |Libros: { sy-dbcnt } registros insertados| ).
    ENDIF.

    "Check result in console
    out->write( 'DONE!' ).

  ENDMETHOD.
ENDCLASS.
