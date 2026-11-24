CLASS lhc_zr_adobe_store DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR ZrAdobeStore
        RESULT result.
*      ConvertFormtemplateToUpper FOR DETERMINE ON MODIFY
*        IMPORTING keys FOR ZrAdobeStore~ConvertFormtemplateToUpper.
ENDCLASS.

CLASS lhc_zr_adobe_store IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

*  METHOD ConvertFormtemplateToUpper.
*
*    READ ENTITIES OF zr_adobe_store IN LOCAL MODE
*      ENTITY ZrAdobeStore
*        FIELDS ( Formtemplate )
*        WITH CORRESPONDING #( keys )
*      RESULT DATA(lt_store)
*      FAILED DATA(ls_failed).
*
*    CHECK lt_store IS NOT INITIAL.
*
*    DATA lt_update TYPE TABLE FOR UPDATE zr_adobe_store\\ZrAdobeStore.
*    DATA ls_update LIKE LINE OF lt_update.
*
*    LOOP AT lt_store INTO DATA(ls_store).
*      CHECK ls_store-Formtemplate IS NOT INITIAL.
*
*      DATA(lv_upper) = to_upper( ls_store-Formtemplate ).
*      CHECK ls_store-Formtemplate <> lv_upper.
*
*      " Clear and build the update record explicitly
*      CLEAR ls_update.
*      ls_update-%tky         = ls_store-%tky.
*      ls_update-Formtemplate = lv_upper.
*
*      " Set %control explicitly — not inline
*      ls_update-%control-Formtemplate = if_abap_behv=>mk-on.
*
*      APPEND ls_update TO lt_update.
*    ENDLOOP.
*
*    CHECK lt_update IS NOT INITIAL.
*
*    MODIFY ENTITIES OF zr_adobe_store IN LOCAL MODE
*      ENTITY ZrAdobeStore
*        UPDATE FIELDS ( Formtemplate )
*        WITH lt_update
*      REPORTED DATA(ls_reported1)
*      FAILED data(ls_failed1)
*      MAPPED data(ls_mapped1).
*
*  ENDMETHOD.
ENDCLASS.
