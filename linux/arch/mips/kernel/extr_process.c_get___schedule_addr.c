
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcode; int target; } ;
union mips_instruction {TYPE_1__ j_format; } ;


 unsigned long J_TARGET (union mips_instruction*,int ) ;
 scalar_t__ j_op ;
 scalar_t__ schedule ;

__attribute__((used)) static unsigned long get___schedule_addr(void)
{
 union mips_instruction *ip = (void *)schedule;
 int max_insns = 8;
 int i;

 for (i = 0; i < max_insns; i++, ip++) {
  if (ip->j_format.opcode == j_op)
   return J_TARGET(ip, ip->j_format.target);
 }
 return 0;
}
