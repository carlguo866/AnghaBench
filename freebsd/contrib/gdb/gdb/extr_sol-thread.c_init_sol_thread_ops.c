
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_stack; int to_has_registers; int to_has_execution; int to_magic; int to_make_corefile_notes; int to_find_memory_regions; int to_has_thread_control; int to_stratum; int to_stop; int to_find_new_threads; int to_pid_to_str; int to_thread_alive; int to_notice_signals; int to_can_run; int to_mourn_inferior; int to_create_inferior; int to_kill; int to_terminal_info; int to_terminal_save_ours; int to_terminal_ours; int to_terminal_ours_for_output; int to_terminal_inferior; int to_terminal_init; int to_remove_breakpoint; int to_insert_breakpoint; int to_files_info; int to_xfer_partial; int to_xfer_memory; int to_prepare_to_store; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_attach; int to_open; } ;


 int OPS_MAGIC ;
 int child_terminal_info ;
 int memory_insert_breakpoint ;
 int memory_remove_breakpoint ;
 int process_stratum ;
 int sol_find_memory_regions ;
 int sol_find_new_threads ;
 int sol_make_note_section ;
 int sol_thread_alive ;
 int sol_thread_attach ;
 int sol_thread_can_run ;
 int sol_thread_create_inferior ;
 int sol_thread_detach ;
 int sol_thread_fetch_registers ;
 int sol_thread_files_info ;
 int sol_thread_kill_inferior ;
 int sol_thread_mourn_inferior ;
 int sol_thread_notice_signals ;
 int sol_thread_open ;
 TYPE_1__ sol_thread_ops ;
 int sol_thread_prepare_to_store ;
 int sol_thread_resume ;
 int sol_thread_stop ;
 int sol_thread_store_registers ;
 int sol_thread_wait ;
 int sol_thread_xfer_memory ;
 int sol_thread_xfer_partial ;
 int solaris_pid_to_str ;
 int tc_none ;
 int terminal_inferior ;
 int terminal_init_inferior ;
 int terminal_ours ;
 int terminal_ours_for_output ;
 int terminal_save_ours ;

__attribute__((used)) static void
init_sol_thread_ops (void)
{
  sol_thread_ops.to_shortname = "solaris-threads";
  sol_thread_ops.to_longname = "Solaris threads and pthread.";
  sol_thread_ops.to_doc = "Solaris threads and pthread support.";
  sol_thread_ops.to_open = sol_thread_open;
  sol_thread_ops.to_attach = sol_thread_attach;
  sol_thread_ops.to_detach = sol_thread_detach;
  sol_thread_ops.to_resume = sol_thread_resume;
  sol_thread_ops.to_wait = sol_thread_wait;
  sol_thread_ops.to_fetch_registers = sol_thread_fetch_registers;
  sol_thread_ops.to_store_registers = sol_thread_store_registers;
  sol_thread_ops.to_prepare_to_store = sol_thread_prepare_to_store;
  sol_thread_ops.to_xfer_memory = sol_thread_xfer_memory;
  sol_thread_ops.to_xfer_partial = sol_thread_xfer_partial;
  sol_thread_ops.to_files_info = sol_thread_files_info;
  sol_thread_ops.to_insert_breakpoint = memory_insert_breakpoint;
  sol_thread_ops.to_remove_breakpoint = memory_remove_breakpoint;
  sol_thread_ops.to_terminal_init = terminal_init_inferior;
  sol_thread_ops.to_terminal_inferior = terminal_inferior;
  sol_thread_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  sol_thread_ops.to_terminal_ours = terminal_ours;
  sol_thread_ops.to_terminal_save_ours = terminal_save_ours;
  sol_thread_ops.to_terminal_info = child_terminal_info;
  sol_thread_ops.to_kill = sol_thread_kill_inferior;
  sol_thread_ops.to_create_inferior = sol_thread_create_inferior;
  sol_thread_ops.to_mourn_inferior = sol_thread_mourn_inferior;
  sol_thread_ops.to_can_run = sol_thread_can_run;
  sol_thread_ops.to_notice_signals = sol_thread_notice_signals;
  sol_thread_ops.to_thread_alive = sol_thread_alive;
  sol_thread_ops.to_pid_to_str = solaris_pid_to_str;
  sol_thread_ops.to_find_new_threads = sol_find_new_threads;
  sol_thread_ops.to_stop = sol_thread_stop;
  sol_thread_ops.to_stratum = process_stratum;
  sol_thread_ops.to_has_all_memory = 1;
  sol_thread_ops.to_has_memory = 1;
  sol_thread_ops.to_has_stack = 1;
  sol_thread_ops.to_has_registers = 1;
  sol_thread_ops.to_has_execution = 1;
  sol_thread_ops.to_has_thread_control = tc_none;
  sol_thread_ops.to_find_memory_regions = sol_find_memory_regions;
  sol_thread_ops.to_make_corefile_notes = sol_make_note_section;
  sol_thread_ops.to_magic = OPS_MAGIC;
}
