*"* use this source file for your ABAP unit test classes
CLASS ltc_roman_conv DEFINITION FOR TESTING
RISK LEVEL HARMLESS
DURATION SHORT.

  PRIVATE SECTION.
    DATA: m_cut TYPE REF TO yfa_roman_converter.
    METHODS one_in_1_out FOR TESTING RAISING cx_static_check.
    METHODS two_in_2_out FOR TESTING RAISING cx_static_check.
    METHODS three_in_3_out FOR TESTING RAISING cx_static_check.
    METHODS four_in_4_out FOR TESTING RAISING cx_static_check.
    METHODS five_in_5_out FOR TESTING RAISING cx_static_check.
    METHODS six_in_6_out FOR TESTING RAISING cx_static_check.
    METHODS seven_in_7_out FOR TESTING RAISING cx_static_check.
    METHODS eight_in_8_out FOR TESTING RAISING cx_static_check.
    METHODS nine_in_9_out FOR TESTING RAISING cx_static_check.
    METHODS ten_in_10_out FOR TESTING RAISING cx_static_check.
    METHODS fifty_in_50_out FOR TESTING RAISING cx_static_check.
    METHODS hundred_in_100_out FOR TESTING RAISING cx_static_check.
    METHODS fivehundred_in_500_out FOR TESTING RAISING cx_static_check.
    METHODS thousand_in_1000_out FOR TESTING RAISING cx_static_check.
    METHODS setup.

ENDCLASS.

CLASS ltc_roman_conv IMPLEMENTATION.

  METHOD setup.

    "GIVEN
    m_cut = NEW yfa_roman_converter(  ).

  ENDMETHOD.

  METHOD one_in_1_out.

    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'I' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 1 ).

  ENDMETHOD.

  METHOD two_in_2_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'II' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 2 ).

  ENDMETHOD.

  METHOD three_in_3_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'III' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 3 ).

  ENDMETHOD.

  METHOD four_in_4_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'IV' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 4 ).


  ENDMETHOD.

  METHOD five_in_5_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'V' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 5 ).

  ENDMETHOD.

    METHOD six_in_6_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'VI' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 6 ).

  ENDMETHOD.

      METHOD seven_in_7_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'VII' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 7 ).

  ENDMETHOD.

      METHOD eight_in_8_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'VIII' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 8 ).

  ENDMETHOD.

      METHOD nine_in_9_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'IX' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 9 ).

  ENDMETHOD.

      METHOD ten_in_10_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'X' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 10 ).

  ENDMETHOD.

        METHOD fifty_in_50_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'L' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 50 ).

  ENDMETHOD.

        METHOD hundred_in_100_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'C' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 100 ).

  ENDMETHOD.

        METHOD fivehundred_in_500_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'D' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 500 ).

  ENDMETHOD.

        METHOD thousand_in_1000_out.


    "WHEN
    DATA(arabic) = m_cut->to_arabic( i_roman_numeral = 'M' ).

    "THEN
    cl_abap_unit_assert=>assert_equals( act = arabic
                                        exp = 1000 ).

  ENDMETHOD.



ENDCLASS.
