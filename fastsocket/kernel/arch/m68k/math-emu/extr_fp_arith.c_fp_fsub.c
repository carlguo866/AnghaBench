
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int sign; } ;


 int PINSTR ;
 int dprint (int ,char*) ;
 struct fp_ext* fp_fadd (struct fp_ext*,struct fp_ext*) ;

struct fp_ext *
fp_fsub(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fsub ");

 src->sign = !src->sign;
 return fp_fadd(dest, src);
}
