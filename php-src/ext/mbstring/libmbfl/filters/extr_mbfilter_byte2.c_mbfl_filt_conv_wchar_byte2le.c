
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

int mbfl_filt_conv_wchar_byte2le(int c, mbfl_convert_filter *filter)
{
 CK((*filter->output_function)(c & 0xff, filter->data));
 CK((*filter->output_function)((c >> 8) & 0xff, filter->data));
 return c;
}
