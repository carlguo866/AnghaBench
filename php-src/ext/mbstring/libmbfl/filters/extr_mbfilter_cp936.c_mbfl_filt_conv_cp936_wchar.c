
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSGROUP_MASK ;
 int MBFL_WCSGROUP_THROUGH ;
 int MBFL_WCSPLANE_MASK ;
 int MBFL_WCSPLANE_WINCP936 ;
 int* cp936_ucs_table ;
 int cp936_ucs_table_size ;
 int** mbfl_cp936_pua_tbl ;
 int mbfl_cp936_pua_tbl_max ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int
mbfl_filt_conv_cp936_wchar(int c, mbfl_convert_filter *filter)
{
 int k;
 int c1, c2, w = -1;

 switch (filter->status) {
 case 0:
  if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c == 0x80) {
   CK((*filter->output_function)(0x20ac, filter->data));
  } else if (c < 0xff) {
   filter->status = 1;
   filter->cache = c;
  } else {
   CK((*filter->output_function)(0xf8f5, filter->data));
  }
  break;

 case 1:
  filter->status = 0;
  c1 = filter->cache;

  if (((c1 >= 0xaa && c1 <= 0xaf) || (c1 >= 0xf8 && c1 <= 0xfe)) &&
   (c >= 0xa1 && c <= 0xfe)) {

   w = 94*(c1 >= 0xf8 ? c1 - 0xf2 : c1 - 0xaa) + (c - 0xa1) + 0xe000;
   CK((*filter->output_function)(w, filter->data));
  } else if (c1 >= 0xa1 && c1 <= 0xa7 && c >= 0x40 && c < 0xa1 && c != 0x7f) {

   w = 96*(c1 - 0xa1) + c - (c >= 0x80 ? 0x41 : 0x40) + 0xe4c6;
   CK((*filter->output_function)(w, filter->data));
  }

  c2 = (c1 << 8) | c;

  if (w <= 0 &&
   ((c2 >= 0xa2ab && c2 <= 0xa9f0 + (0xe80f-0xe801)) ||
    (c2 >= 0xd7fa && c2 <= 0xd7fa + (0xe814-0xe810)) ||
    (c2 >= 0xfe50 && c2 <= 0xfe80 + (0xe864-0xe844)))) {
   for (k = 0; k < mbfl_cp936_pua_tbl_max; k++) {
    if (c2 >= mbfl_cp936_pua_tbl[k][2] &&
     c2 <= mbfl_cp936_pua_tbl[k][2] +
     mbfl_cp936_pua_tbl[k][1] - mbfl_cp936_pua_tbl[k][0]) {
     w = c2 - mbfl_cp936_pua_tbl[k][2] + mbfl_cp936_pua_tbl[k][0];
     CK((*filter->output_function)(w, filter->data));
     break;
    }
   }
  }

  if (w <= 0) {
   if (c1 < 0xff && c1 > 0x80 && c > 0x39 && c < 0xff && c != 0x7f) {
    w = (c1 - 0x81)*192 + (c - 0x40);
    if (w >= 0 && w < cp936_ucs_table_size) {
     w = cp936_ucs_table[w];
    } else {
     w = 0;
    }
    if (w <= 0) {
     w = (c1 << 8) | c;
     w &= MBFL_WCSPLANE_MASK;
     w |= MBFL_WCSPLANE_WINCP936;
    }
    CK((*filter->output_function)(w, filter->data));
   } else if ((c >= 0 && c < 0x21) || c == 0x7f) {
    CK((*filter->output_function)(c, filter->data));
   } else {
    w = (c1 << 8) | c;
    w &= MBFL_WCSGROUP_MASK;
    w |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(w, filter->data));
   }
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
