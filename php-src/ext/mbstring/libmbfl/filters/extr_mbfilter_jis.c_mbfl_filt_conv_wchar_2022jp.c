
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;
 int* ucs_a1_jis_table ;
 int ucs_a1_jis_table_max ;
 int ucs_a1_jis_table_min ;
 int* ucs_a2_jis_table ;
 int ucs_a2_jis_table_max ;
 int ucs_a2_jis_table_min ;
 int* ucs_i_jis_table ;
 int ucs_i_jis_table_max ;
 int ucs_i_jis_table_min ;
 int* ucs_r_jis_table ;
 int ucs_r_jis_table_max ;
 int ucs_r_jis_table_min ;

int
mbfl_filt_conv_wchar_2022jp(int c, mbfl_convert_filter *filter)
{
 int s;

 s = 0;
 if (c >= ucs_a1_jis_table_min && c < ucs_a1_jis_table_max) {
  s = ucs_a1_jis_table[c - ucs_a1_jis_table_min];
 } else if (c >= ucs_a2_jis_table_min && c < ucs_a2_jis_table_max) {
  s = ucs_a2_jis_table[c - ucs_a2_jis_table_min];
 } else if (c >= ucs_i_jis_table_min && c < ucs_i_jis_table_max) {
  s = ucs_i_jis_table[c - ucs_i_jis_table_min];
 } else if (c >= ucs_r_jis_table_min && c < ucs_r_jis_table_max) {
  s = ucs_r_jis_table[c - ucs_r_jis_table_min];
 }
 if (s <= 0) {
  if (c == 0xa5) {
   s = 0x1005c;
  } else if (c == 0x203e) {
   s = 0x1007e;
  } else if (c == 0xff3c) {
   s = 0x2140;
  } else if (c == 0xff5e) {
   s = 0x2141;
  } else if (c == 0x2225) {
   s = 0x2142;
  } else if (c == 0xff0d) {
   s = 0x215d;
  } else if (c == 0xffe0) {
   s = 0x2171;
  } else if (c == 0xffe1) {
   s = 0x2172;
  } else if (c == 0xffe2) {
   s = 0x224c;
  }
  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 } else if ((s >= 0x80 && s < 0x2121) || (s > 0x8080)) {
  s = -1;
 }
 if (s >= 0) {
  if (s < 0x80) {
   if ((filter->status & 0xff00) != 0) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x28, filter->data));
    CK((*filter->output_function)(0x42, filter->data));
   }
   filter->status = 0;
   CK((*filter->output_function)(s, filter->data));
  } else if (s < 0x10000) {
   if ((filter->status & 0xff00) != 0x200) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x24, filter->data));
    CK((*filter->output_function)(0x42, filter->data));
   }
   filter->status = 0x200;
   CK((*filter->output_function)((s >> 8) & 0x7f, filter->data));
   CK((*filter->output_function)(s & 0x7f, filter->data));
  } else {
   if ((filter->status & 0xff00) != 0x400) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x28, filter->data));
    CK((*filter->output_function)(0x4a, filter->data));
   }
   filter->status = 0x400;
   CK((*filter->output_function)(s & 0x7f, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
