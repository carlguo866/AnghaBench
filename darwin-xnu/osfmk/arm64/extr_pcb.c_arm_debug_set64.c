
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct cpu_data {TYPE_4__* cpu_user_debug; } ;
typedef int off_state ;
typedef int boolean_t ;
struct TYPE_10__ {scalar_t__* bcr; scalar_t__* wcr; int mdscr_el1; int * wvr; int * bvr; } ;
struct TYPE_11__ {TYPE_1__ ds64; } ;
struct TYPE_13__ {TYPE_2__ uds; } ;
typedef TYPE_4__ arm_debug_state_t ;
struct TYPE_14__ {int num_breakpoint_pairs; int num_watchpoint_pairs; } ;
typedef TYPE_5__ arm_debug_info_t ;
struct TYPE_12__ {int upcb; } ;
struct TYPE_15__ {TYPE_3__ machine; } ;


 int ARM_DBG_CR_HIGHER_MODE_ENABLE ;
 int ARM_DBG_CR_MODE_CONTROL_PRIVILEGED ;
 int FALSE ;
 int ISB_SY ;
 int PSR64_SS ;
 int SET_DBGBCRn (int,int,int) ;
 int SET_DBGBVRn (int,int ) ;
 int SET_DBGWCRn (int,int,int) ;
 int SET_DBGWVRn (int,int ) ;
 int __builtin_arm_isb (int ) ;
 TYPE_5__* arm_debug_info () ;
 int bzero (TYPE_4__*,int) ;
 TYPE_6__* current_thread () ;
 struct cpu_data* getCpuDatap () ;
 int get_saved_state_cpsr (int ) ;
 int ml_set_interrupts_enabled (int) ;
 int panic (char*,int) ;
 int set_saved_state_cpsr (int ,int) ;
 int update_mdscr (int,int) ;

void arm_debug_set64(arm_debug_state_t *debug_state)
{
 struct cpu_data *cpu_data_ptr;
 arm_debug_info_t *debug_info = arm_debug_info();
 boolean_t intr, set_mde = 0;
 arm_debug_state_t off_state;
 uint32_t i;
 uint64_t all_ctrls = 0;

 intr = ml_set_interrupts_enabled(FALSE);
 cpu_data_ptr = getCpuDatap();


 cpu_data_ptr->cpu_user_debug = debug_state;

 if (((void*)0) == debug_state) {
  bzero(&off_state, sizeof(off_state));
  debug_state = &off_state;
 }

 switch (debug_info->num_breakpoint_pairs) {
 case 16:
  SET_DBGBVRn(15, debug_state->uds.ds64.bvr[15]);
  SET_DBGBCRn(15, (uint64_t)debug_state->uds.ds64.bcr[15], all_ctrls);
 case 15:
  SET_DBGBVRn(14, debug_state->uds.ds64.bvr[14]);
  SET_DBGBCRn(14, (uint64_t)debug_state->uds.ds64.bcr[14], all_ctrls);
 case 14:
  SET_DBGBVRn(13, debug_state->uds.ds64.bvr[13]);
  SET_DBGBCRn(13, (uint64_t)debug_state->uds.ds64.bcr[13], all_ctrls);
 case 13:
  SET_DBGBVRn(12, debug_state->uds.ds64.bvr[12]);
  SET_DBGBCRn(12, (uint64_t)debug_state->uds.ds64.bcr[12], all_ctrls);
 case 12:
  SET_DBGBVRn(11, debug_state->uds.ds64.bvr[11]);
  SET_DBGBCRn(11, (uint64_t)debug_state->uds.ds64.bcr[11], all_ctrls);
 case 11:
  SET_DBGBVRn(10, debug_state->uds.ds64.bvr[10]);
  SET_DBGBCRn(10, (uint64_t)debug_state->uds.ds64.bcr[10], all_ctrls);
 case 10:
  SET_DBGBVRn(9, debug_state->uds.ds64.bvr[9]);
  SET_DBGBCRn(9, (uint64_t)debug_state->uds.ds64.bcr[9], all_ctrls);
 case 9:
  SET_DBGBVRn(8, debug_state->uds.ds64.bvr[8]);
  SET_DBGBCRn(8, (uint64_t)debug_state->uds.ds64.bcr[8], all_ctrls);
 case 8:
  SET_DBGBVRn(7, debug_state->uds.ds64.bvr[7]);
  SET_DBGBCRn(7, (uint64_t)debug_state->uds.ds64.bcr[7], all_ctrls);
 case 7:
  SET_DBGBVRn(6, debug_state->uds.ds64.bvr[6]);
  SET_DBGBCRn(6, (uint64_t)debug_state->uds.ds64.bcr[6], all_ctrls);
 case 6:
  SET_DBGBVRn(5, debug_state->uds.ds64.bvr[5]);
  SET_DBGBCRn(5, (uint64_t)debug_state->uds.ds64.bcr[5], all_ctrls);
 case 5:
  SET_DBGBVRn(4, debug_state->uds.ds64.bvr[4]);
  SET_DBGBCRn(4, (uint64_t)debug_state->uds.ds64.bcr[4], all_ctrls);
 case 4:
  SET_DBGBVRn(3, debug_state->uds.ds64.bvr[3]);
  SET_DBGBCRn(3, (uint64_t)debug_state->uds.ds64.bcr[3], all_ctrls);
 case 3:
  SET_DBGBVRn(2, debug_state->uds.ds64.bvr[2]);
  SET_DBGBCRn(2, (uint64_t)debug_state->uds.ds64.bcr[2], all_ctrls);
 case 2:
  SET_DBGBVRn(1, debug_state->uds.ds64.bvr[1]);
  SET_DBGBCRn(1, (uint64_t)debug_state->uds.ds64.bcr[1], all_ctrls);
 case 1:
  SET_DBGBVRn(0, debug_state->uds.ds64.bvr[0]);
  SET_DBGBCRn(0, (uint64_t)debug_state->uds.ds64.bcr[0], all_ctrls);
 default:
  break;
 }

 switch (debug_info->num_watchpoint_pairs) {
 case 16:
  SET_DBGWVRn(15, debug_state->uds.ds64.wvr[15]);
  SET_DBGWCRn(15, (uint64_t)debug_state->uds.ds64.wcr[15], all_ctrls);
 case 15:
  SET_DBGWVRn(14, debug_state->uds.ds64.wvr[14]);
  SET_DBGWCRn(14, (uint64_t)debug_state->uds.ds64.wcr[14], all_ctrls);
 case 14:
  SET_DBGWVRn(13, debug_state->uds.ds64.wvr[13]);
  SET_DBGWCRn(13, (uint64_t)debug_state->uds.ds64.wcr[13], all_ctrls);
 case 13:
  SET_DBGWVRn(12, debug_state->uds.ds64.wvr[12]);
  SET_DBGWCRn(12, (uint64_t)debug_state->uds.ds64.wcr[12], all_ctrls);
 case 12:
  SET_DBGWVRn(11, debug_state->uds.ds64.wvr[11]);
  SET_DBGWCRn(11, (uint64_t)debug_state->uds.ds64.wcr[11], all_ctrls);
 case 11:
  SET_DBGWVRn(10, debug_state->uds.ds64.wvr[10]);
  SET_DBGWCRn(10, (uint64_t)debug_state->uds.ds64.wcr[10], all_ctrls);
 case 10:
  SET_DBGWVRn(9, debug_state->uds.ds64.wvr[9]);
  SET_DBGWCRn(9, (uint64_t)debug_state->uds.ds64.wcr[9], all_ctrls);
 case 9:
  SET_DBGWVRn(8, debug_state->uds.ds64.wvr[8]);
  SET_DBGWCRn(8, (uint64_t)debug_state->uds.ds64.wcr[8], all_ctrls);
 case 8:
  SET_DBGWVRn(7, debug_state->uds.ds64.wvr[7]);
  SET_DBGWCRn(7, (uint64_t)debug_state->uds.ds64.wcr[7], all_ctrls);
 case 7:
  SET_DBGWVRn(6, debug_state->uds.ds64.wvr[6]);
  SET_DBGWCRn(6, (uint64_t)debug_state->uds.ds64.wcr[6], all_ctrls);
 case 6:
  SET_DBGWVRn(5, debug_state->uds.ds64.wvr[5]);
  SET_DBGWCRn(5, (uint64_t)debug_state->uds.ds64.wcr[5], all_ctrls);
 case 5:
  SET_DBGWVRn(4, debug_state->uds.ds64.wvr[4]);
  SET_DBGWCRn(4, (uint64_t)debug_state->uds.ds64.wcr[4], all_ctrls);
 case 4:
  SET_DBGWVRn(3, debug_state->uds.ds64.wvr[3]);
  SET_DBGWCRn(3, (uint64_t)debug_state->uds.ds64.wcr[3], all_ctrls);
 case 3:
  SET_DBGWVRn(2, debug_state->uds.ds64.wvr[2]);
  SET_DBGWCRn(2, (uint64_t)debug_state->uds.ds64.wcr[2], all_ctrls);
 case 2:
  SET_DBGWVRn(1, debug_state->uds.ds64.wvr[1]);
  SET_DBGWCRn(1, (uint64_t)debug_state->uds.ds64.wcr[1], all_ctrls);
 case 1:
  SET_DBGWVRn(0, debug_state->uds.ds64.wvr[0]);
  SET_DBGWCRn(0, (uint64_t)debug_state->uds.ds64.wcr[0], all_ctrls);
 default:
  break;
 }







 for (i = 0; i < debug_info->num_breakpoint_pairs; i++) {
  if (0 != debug_state->uds.ds64.bcr[i]) {
   set_mde = 1;
   break;
  }
 }

 for (i = 0; i < debug_info->num_watchpoint_pairs; i++) {
  if (0 != debug_state->uds.ds64.wcr[i]) {
   set_mde = 1;
   break;
  }
 }




 if (set_mde) {
  update_mdscr(0, 0x8000);
 }




 if (debug_state->uds.ds64.mdscr_el1 & 0x1) {

  update_mdscr(0x8000, 1);

  set_saved_state_cpsr((current_thread()->machine.upcb),
   get_saved_state_cpsr((current_thread()->machine.upcb)) | PSR64_SS);

 } else {

  update_mdscr(0x1, 0);





 }

 (void) ml_set_interrupts_enabled(intr);

 return;
}
