
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char const*) ;

__attribute__((used)) static int set_reg_profile(RAnal *anal) {
 const char *p =
  "=PC	PC\n"


  "=A0	r0\n"
  "=A1	r1\n"
  "=A2	r2\n"
  "=A3	r3\n"
  "=R0	r0\n"
  "gpr	r0	.4	0	0\n"
  "gpr	r1	.4	1	0\n"
  "gpr	r2	.4	2	0\n"
  "gpr	r3	.4	3	0\n"
  "gpr	r4	.4	4	0\n"
  "gpr	r5	.4	5	0\n"
  "gpr	r6	.4	6	0\n"
  "gpr	r7	.4	7	0\n"
  "gpr	r8	.4	8	0\n"
  "gpr	r9	.4	9	0\n"
  "gpr	r10	.4	10	0\n"
  "gpr	r11	.4	11	0\n"
  "gpr	r12	.4	12	0\n"
  "gpr	r13	.4	13	0\n"
  "gpr	r14	.4	14	0\n"
  "gpr	r15	.4	15	0\n"
  "gpr	PC	.64	32	0\n"

  "gpr	PC1	.64	34	0\n"
  "gpr	PC2	.64	34	0\n"
  "gpr	PC3	.64	34	0\n"
  ;

 return r_reg_set_profile_string (anal->reg, p);
}
