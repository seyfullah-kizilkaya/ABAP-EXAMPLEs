*&---------------------------------------------------------------------*
*& Report ZBK_MATERIAL_LIST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbk_material_list.

DATA: gv_matnr  TYPE bapimatdet-material,
      gs_detail TYPE bapimatdoa,
      gt_alv    TYPE TABLE OF zbk_material_l,
      gs_alv    TYPE zbk_material_l,
      go_salv   TYPE REF TO cl_salv_table.
SELECT-OPTIONS: s_matnr FOR gv_matnr NO INTERVALS.

START-OF-SELECTION.
  LOOP AT s_matnr.
    gv_matnr = s_matnr-low.
    CALL FUNCTION 'BAPI_MATERIAL_GET_DETAIL'
      EXPORTING
        material              = gv_matnr
      IMPORTING
        material_general_data = gs_detail.

    CLEAR: gs_alv.
    MOVE-CORRESPONDING gs_detail TO gs_alv.
    gs_alv-matnr = gv_matnr.
    APPEND gs_alv TO gt_alv.

  ENDLOOP.

  cl_salv_table=>factory(
  IMPORTING
    r_salv_table = go_salv
    CHANGING
      t_table     = gt_alv ).

  go_salv->display( ).
