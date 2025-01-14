
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 size_t FPU_TYPE_FLAG_POS ;
 int PA2_0_FPU_FLAG ;
 int PA83_UNIMP_EXCP ;
 int VASSERT (int) ;
 int decode_06 (int,int*) ;
 int decode_0c (int,int,int,int*) ;
 int decode_0e (int,int,int,int*) ;
 int decode_26 (int,int*) ;
 int decode_2e (int,int*) ;
 int get_class (int) ;
 int get_major (int) ;
 int get_subop (int) ;
 int get_subop1_PA1_1 (int) ;
 int get_subop1_PA2_0 (int) ;

u_int
emfpudispatch(u_int ir, u_int dummy1, u_int dummy2, u_int fpregs[])
{
 u_int class, subop, major;
 u_int fpu_type_flags;


 VASSERT(sizeof(int) == 4);

 fpu_type_flags=fpregs[FPU_TYPE_FLAG_POS];

 major = get_major(ir);
 class = get_class(ir);
 if (class == 1) {
  if (fpu_type_flags & PA2_0_FPU_FLAG)
   subop = get_subop1_PA2_0(ir);
  else
   subop = get_subop1_PA1_1(ir);
 }
 else
  subop = get_subop(ir);
 switch (major) {
  case 0x0C:
   return(decode_0c(ir,class,subop,fpregs));
  case 0x0E:
   return(decode_0e(ir,class,subop,fpregs));
  case 0x06:
   return(decode_06(ir,fpregs));
  case 0x26:
   return(decode_26(ir,fpregs));
  case 0x2E:
   return(decode_2e(ir,fpregs));
  default:
   return(PA83_UNIMP_EXCP);
 }
}
