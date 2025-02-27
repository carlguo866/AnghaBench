
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rcom_slot {int ro_slot; int ro_nodeid; } ;
struct dlm_slot {int nodeid; int slot; } ;
struct dlm_ls {int dummy; } ;
typedef int line ;


 int SLOT_DEBUG_LINE ;
 int log_rinfo (struct dlm_ls*,char*,int ,int,char*) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void log_slots(struct dlm_ls *ls, uint32_t gen, int num_slots,
        struct rcom_slot *ro0, struct dlm_slot *array,
        int array_size)
{
 char line[SLOT_DEBUG_LINE];
 int len = SLOT_DEBUG_LINE - 1;
 int pos = 0;
 int ret, i;

 memset(line, 0, sizeof(line));

 if (array) {
  for (i = 0; i < array_size; i++) {
   if (!array[i].nodeid)
    continue;

   ret = snprintf(line + pos, len - pos, " %d:%d",
           array[i].slot, array[i].nodeid);
   if (ret >= len - pos)
    break;
   pos += ret;
  }
 } else if (ro0) {
  for (i = 0; i < num_slots; i++) {
   ret = snprintf(line + pos, len - pos, " %d:%d",
           ro0[i].ro_slot, ro0[i].ro_nodeid);
   if (ret >= len - pos)
    break;
   pos += ret;
  }
 }

 log_rinfo(ls, "generation %u slots %d%s", gen, num_slots, line);
}
