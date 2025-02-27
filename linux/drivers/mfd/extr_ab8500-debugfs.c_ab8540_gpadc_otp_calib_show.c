
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct seq_file {int dummy; } ;
struct ab8500_gpadc {int dummy; } ;


 struct ab8500_gpadc* ab8500_gpadc_get (char*) ;
 int ab8540_gpadc_get_otp (struct ab8500_gpadc*,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ab8540_gpadc_otp_calib_show(struct seq_file *s, void *p)
{
 struct ab8500_gpadc *gpadc;
 u16 vmain_l, vmain_h, btemp_l, btemp_h;
 u16 vbat_l, vbat_h, ibat_l, ibat_h;

 gpadc = ab8500_gpadc_get("ab8500-gpadc.0");
 ab8540_gpadc_get_otp(gpadc, &vmain_l, &vmain_h, &btemp_l, &btemp_h,
   &vbat_l, &vbat_h, &ibat_l, &ibat_h);
 seq_printf(s,
     "VMAIN_L:0x%X\n"
     "VMAIN_H:0x%X\n"
     "BTEMP_L:0x%X\n"
     "BTEMP_H:0x%X\n"
     "VBAT_L:0x%X\n"
     "VBAT_H:0x%X\n"
     "IBAT_L:0x%X\n"
     "IBAT_H:0x%X\n",
     vmain_l, vmain_h, btemp_l, btemp_h,
     vbat_l, vbat_h, ibat_l, ibat_h);

 return 0;
}
