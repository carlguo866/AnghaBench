
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {unsigned long* bpt_addr; unsigned int* bpt_insn; int bpt_nsaved; } ;


 int BREAKINST ;
 int DBG (int ,char*) ;
 int DBG_BPT ;
 int REG_PC ;
 void* get_reg (struct task_struct*,int) ;
 int read_int (struct task_struct*,unsigned long,int*) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 int write_int (struct task_struct*,unsigned long,int ) ;

int
ptrace_set_bpt(struct task_struct * child)
{
 int displ, i, res, reg_b, nsaved = 0;
 unsigned int insn, op_code;
 unsigned long pc;

 pc = get_reg(child, REG_PC);
 res = read_int(child, pc, (int *) &insn);
 if (res < 0)
  return res;

 op_code = insn >> 26;
 if (op_code >= 0x30) {
  displ = ((s32)(insn << 11)) >> 9;
  task_thread_info(child)->bpt_addr[nsaved++] = pc + 4;
  if (displ)
   task_thread_info(child)->bpt_addr[nsaved++]
     = pc + 4 + displ;
  DBG(DBG_BPT, ("execing branch\n"));
 } else if (op_code == 0x1a) {
  reg_b = (insn >> 16) & 0x1f;
  task_thread_info(child)->bpt_addr[nsaved++] = get_reg(child, reg_b);
  DBG(DBG_BPT, ("execing jump\n"));
 } else {
  task_thread_info(child)->bpt_addr[nsaved++] = pc + 4;
  DBG(DBG_BPT, ("execing normal insn\n"));
 }


 for (i = 0; i < nsaved; ++i) {
  res = read_int(child, task_thread_info(child)->bpt_addr[i],
          (int *) &insn);
  if (res < 0)
   return res;
  task_thread_info(child)->bpt_insn[i] = insn;
  DBG(DBG_BPT, ("    -> next_pc=%lx\n",
         task_thread_info(child)->bpt_addr[i]));
  res = write_int(child, task_thread_info(child)->bpt_addr[i],
    BREAKINST);
  if (res < 0)
   return res;
 }
 task_thread_info(child)->bpt_nsaved = nsaved;
 return 0;
}
