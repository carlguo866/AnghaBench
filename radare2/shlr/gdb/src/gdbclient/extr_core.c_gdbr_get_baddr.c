
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ data_len; char* data; } ;
typedef TYPE_1__ libgdbr_t ;


 scalar_t__ UINT64_MAX ;
 int gdbr_lock_enter (TYPE_1__*) ;
 int gdbr_lock_leave (TYPE_1__*) ;
 int isxdigit (char) ;
 scalar_t__ r_str_startswith (char*,char*) ;
 scalar_t__ read_packet (TYPE_1__*,int) ;
 scalar_t__ send_ack (TYPE_1__*) ;
 scalar_t__ send_msg (TYPE_1__*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strtoull (char*,int *,int) ;

ut64 gdbr_get_baddr(libgdbr_t *g) {
 ut64 off, min = UINT64_MAX;
 char *ptr;
 if (!g) {
  return UINT64_MAX;
 }

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 if (send_msg (g, "qOffsets") < 0 || read_packet (g, 0) < 0
      || send_ack (g) < 0 || g->data_len == 0) {
  min = UINT64_MAX;
  goto end;
 }
 if (r_str_startswith (g->data, "TextSeg=")) {
  ptr = g->data + strlen ("TextSeg=");
  if (!isxdigit (*ptr)) {
   goto end;
  }
  off = strtoull (ptr, ((void*)0), 16);
  if (off < min) {
   min = off;
  }
  if (!(ptr = strchr (ptr, ';'))) {
   goto end;
  }
  ptr++;
  if (*ptr && r_str_startswith (ptr, "DataSeg=")) {
   ptr += strlen ("DataSeg=");
   if (!isxdigit (*ptr)) {
    goto end;
   }
   off = strtoull (ptr, ((void*)0), 16);
   if (off < min) {
    min = off;
   }
  }
  goto end;
 }
 if (!r_str_startswith (g->data, "Text=")) {
  goto end;
 }
 ptr = g->data + strlen ("Text=");
 if (!isxdigit (*ptr)) {
  goto end;
 }
 off = strtoull (ptr, ((void*)0), 16);
 if (off < min) {
  min = off;
 }
 if (!(ptr = strchr (ptr, ';')) || !r_str_startswith (ptr + 1, "Data=")) {
  min = UINT64_MAX;
  goto end;
 }
 ptr += strlen (";Data=");
 if (!isxdigit (*ptr)) {
  min = UINT64_MAX;
  goto end;
 }
 off = strtoull (ptr, ((void*)0), 16);
 if (off < min) {
  min = off;
 }
 if (!(ptr = strchr (ptr, ';'))) {
  goto end;
 }
 ptr++;
 if (r_str_startswith (ptr, "Bss=")) {
  ptr += strlen ("Bss=");
  if (!isxdigit (*ptr)) {
   goto end;
  }
  off = strtoull (ptr, ((void*)0), 16);
  if (off < min) {
   min = off;
  }
 }
end:
 gdbr_lock_leave (g);
 return min;
}
