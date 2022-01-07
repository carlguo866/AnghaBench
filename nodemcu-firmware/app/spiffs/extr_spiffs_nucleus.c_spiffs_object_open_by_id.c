
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs_mode ;
typedef int spiffs_flags ;
typedef int spiffs_fd ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_CHECK_RES (int ) ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 int SPIFFS_OK ;
 int spiffs_obj_lu_find_id_and_span (int *,int,int ,int ,int *) ;
 int spiffs_object_open_by_page (int *,int ,int *,int ,int ) ;

s32_t spiffs_object_open_by_id(
    spiffs *fs,
    spiffs_obj_id obj_id,
    spiffs_fd *fd,
    spiffs_flags flags,
    spiffs_mode mode) {
  s32_t res = SPIFFS_OK;
  spiffs_page_ix pix;

  res = spiffs_obj_lu_find_id_and_span(fs, obj_id | SPIFFS_OBJ_ID_IX_FLAG, 0, 0, &pix);
  SPIFFS_CHECK_RES(res);

  res = spiffs_object_open_by_page(fs, pix, fd, flags, mode);

  return res;
}
