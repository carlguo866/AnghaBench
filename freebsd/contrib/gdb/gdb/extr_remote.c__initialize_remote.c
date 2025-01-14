
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
struct TYPE_12__ {void* detect; } ;


 void* AUTO_BOOLEAN_FALSE ;
 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 size_t Z_PACKET_ACCESS_WP ;
 size_t Z_PACKET_HARDWARE_BP ;
 size_t Z_PACKET_READ_WP ;
 size_t Z_PACKET_SOFTWARE_BP ;
 size_t Z_PACKET_WRITE_WP ;
 int add_cmd (char*,int ,int ,char*,struct cmd_list_element**) ;
 int add_packet_config_cmd (TYPE_1__*,char*,char*,int ,int ,struct cmd_list_element**,struct cmd_list_element**,int) ;
 int add_prefix_cmd (char*,int ,int ,char*,struct cmd_list_element**,char*,int ,struct cmd_list_element**) ;
 int add_set_cmd (char*,int ,int ,char*,char*,struct cmd_list_element**) ;
 int add_setshow_auto_boolean_cmd (char*,int ,int *,char*,char*,int ,int ,struct cmd_list_element**,struct cmd_list_element**) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,struct cmd_list_element**,struct cmd_list_element**) ;
 int add_setshow_cmd (char*,int ,int ,int *,char*,char*,int *,int *,struct cmd_list_element**,struct cmd_list_element**) ;
 int add_show_from_set (int ,struct cmd_list_element**) ;
 int add_target (int *) ;
 int build_remote_gdbarch_data ;
 int class_maintenance ;
 int class_obscure ;
 struct cmd_list_element* cmdlist ;
 int compare_sections_command ;
 int deprecated_register_gdbarch_swap (int *,int ,int ) ;
 int extended_async_remote_ops ;
 int extended_remote_ops ;
 int init_extended_async_remote_ops () ;
 int init_extended_remote_ops () ;
 int init_remote_async_ops () ;
 int init_remote_ops () ;
 int init_remote_state ;
 int init_remote_threadtests () ;
 int initialize_remote_fileio (struct cmd_list_element*,struct cmd_list_element*) ;
 struct cmd_list_element* maintenancelist ;
 int no_class ;
 int packet_command ;
 int register_gdbarch_data (int ) ;
 int remote_Z_packet_detect ;
 int remote_address_size ;
 int remote_async_ops ;
 int remote_binary_download ;
 int remote_break ;
 int remote_gdbarch_data_handle ;
 int remote_hw_breakpoint_limit ;
 int remote_hw_watchpoint_limit ;
 int remote_new_objfile ;
 int remote_new_objfile_chain ;
 int remote_ops ;
 TYPE_1__ remote_protocol_E ;
 TYPE_1__ remote_protocol_P ;
 TYPE_1__* remote_protocol_Z ;
 TYPE_1__ remote_protocol_binary_download ;
 TYPE_1__ remote_protocol_e ;
 TYPE_1__ remote_protocol_qPart_auxv ;
 TYPE_1__ remote_protocol_qPart_dirty ;
 TYPE_1__ remote_protocol_qSymbol ;
 TYPE_1__ remote_protocol_vcont ;
 int set_memory_read_packet_size ;
 int set_memory_write_packet_size ;
 int set_remote_cmd ;
 int set_remote_protocol_E_packet_cmd ;
 int set_remote_protocol_P_packet_cmd ;
 int set_remote_protocol_Z_access_wp_packet_cmd ;
 int set_remote_protocol_Z_hardware_bp_packet_cmd ;
 int set_remote_protocol_Z_packet_cmd ;
 int set_remote_protocol_Z_read_wp_packet_cmd ;
 int set_remote_protocol_Z_software_bp_packet_cmd ;
 int set_remote_protocol_Z_write_wp_packet_cmd ;
 int set_remote_protocol_binary_download_cmd ;
 int set_remote_protocol_e_packet_cmd ;
 int set_remote_protocol_qPart_auxv_packet_cmd ;
 int set_remote_protocol_qPart_dirty_packet_cmd ;
 int set_remote_protocol_qSymbol_packet_cmd ;
 int set_remote_protocol_vcont_packet_cmd ;
 struct cmd_list_element* setlist ;
 int show_memory_read_packet_size ;
 int show_memory_write_packet_size ;
 int show_remote_cmd ;
 int show_remote_protocol_E_packet_cmd ;
 int show_remote_protocol_P_packet_cmd ;
 int show_remote_protocol_Z_access_wp_packet_cmd ;
 int show_remote_protocol_Z_hardware_bp_packet_cmd ;
 int show_remote_protocol_Z_packet_cmd ;
 int show_remote_protocol_Z_read_wp_packet_cmd ;
 int show_remote_protocol_Z_software_bp_packet_cmd ;
 int show_remote_protocol_Z_write_wp_packet_cmd ;
 int show_remote_protocol_binary_download_cmd ;
 int show_remote_protocol_e_packet_cmd ;
 int show_remote_protocol_qPart_auxv_packet_cmd ;
 int show_remote_protocol_qPart_dirty_packet_cmd ;
 int show_remote_protocol_qSymbol_packet_cmd ;
 int show_remote_protocol_vcont_packet_cmd ;
 struct cmd_list_element* showlist ;
 int target_new_objfile_hook ;
 int update_packet_config (TYPE_1__*) ;
 int var_boolean ;
 int var_integer ;
 int var_zinteger ;

void
_initialize_remote (void)
{
  static struct cmd_list_element *remote_set_cmdlist;
  static struct cmd_list_element *remote_show_cmdlist;
  struct cmd_list_element *tmpcmd;


  remote_gdbarch_data_handle = register_gdbarch_data (init_remote_state);



  DEPRECATED_REGISTER_GDBARCH_SWAP (remote_address_size);
  deprecated_register_gdbarch_swap (((void*)0), 0, build_remote_gdbarch_data);

  init_remote_ops ();
  add_target (&remote_ops);

  init_extended_remote_ops ();
  add_target (&extended_remote_ops);

  init_remote_async_ops ();
  add_target (&remote_async_ops);

  init_extended_async_remote_ops ();
  add_target (&extended_async_remote_ops);


  remote_new_objfile_chain = target_new_objfile_hook;
  target_new_objfile_hook = remote_new_objfile;







  add_prefix_cmd ("remote", class_maintenance, set_remote_cmd, "Remote protocol specific variables\nConfigure various remote-protocol specific variables such as\nthe packets being used",



    &remote_set_cmdlist, "set remote ",
    0 , &setlist);
  add_prefix_cmd ("remote", class_maintenance, show_remote_cmd, "Remote protocol specific variables\nConfigure various remote-protocol specific variables such as\nthe packets being used",



    &remote_show_cmdlist, "show remote ",
    0 , &showlist);

  add_cmd ("compare-sections", class_obscure, compare_sections_command,
    "Compare section data on target to the exec file.\nArgument is a single section name (default: all loaded sections).",

    &cmdlist);

  add_cmd ("packet", class_maintenance, packet_command,
    "Send an arbitrary packet to a remote target.\n   maintenance packet TEXT\nIf GDB is talking to an inferior via the GDB serial protocol, then\nthis command sends the string TEXT to the inferior, and displays the\nresponse packet.  GDB supplies the initial `$' character, and the\nterminating `#' character and checksum.",





    &maintenancelist);

  add_setshow_boolean_cmd ("remotebreak", no_class, &remote_break,
      "Set whether to send break if interrupted.\n",
      "Show whether to send break if interrupted.\n",
      ((void*)0), ((void*)0),
      &setlist, &showlist);



  add_cmd ("remotewritesize", no_class, set_memory_write_packet_size,
    "Set the maximum number of bytes per memory write packet (deprecated).\n",
    &setlist);
  add_cmd ("remotewritesize", no_class, show_memory_write_packet_size,
    "Show the maximum number of bytes per memory write packet (deprecated).\n",
    &showlist);
  add_cmd ("memory-write-packet-size", no_class,
    set_memory_write_packet_size,
    "Set the maximum number of bytes per memory-write packet.\n"
    "Specify the number of bytes in a packet or 0 (zero) for the\n"
    "default packet size.  The actual limit is further reduced\n"
    "dependent on the target.  Specify ``fixed'' to disable the\n"
    "further restriction and ``limit'' to enable that restriction\n",
    &remote_set_cmdlist);
  add_cmd ("memory-read-packet-size", no_class,
    set_memory_read_packet_size,
    "Set the maximum number of bytes per memory-read packet.\n"
    "Specify the number of bytes in a packet or 0 (zero) for the\n"
    "default packet size.  The actual limit is further reduced\n"
    "dependent on the target.  Specify ``fixed'' to disable the\n"
    "further restriction and ``limit'' to enable that restriction\n",
    &remote_set_cmdlist);
  add_cmd ("memory-write-packet-size", no_class,
    show_memory_write_packet_size,
    "Show the maximum number of bytes per memory-write packet.\n",
    &remote_show_cmdlist);
  add_cmd ("memory-read-packet-size", no_class,
    show_memory_read_packet_size,
    "Show the maximum number of bytes per memory-read packet.\n",
    &remote_show_cmdlist);

  add_setshow_cmd ("hardware-watchpoint-limit", no_class,
     var_zinteger, &remote_hw_watchpoint_limit, "Set the maximum number of target hardware watchpoints.\nSpecify a negative limit for unlimited.", "Show the maximum number of target hardware watchpoints.\n",



     ((void*)0), ((void*)0), &remote_set_cmdlist, &remote_show_cmdlist);
  add_setshow_cmd ("hardware-breakpoint-limit", no_class,
     var_zinteger, &remote_hw_breakpoint_limit, "Set the maximum number of target hardware breakpoints.\nSpecify a negative limit for unlimited.", "Show the maximum number of target hardware breakpoints.\n",



     ((void*)0), ((void*)0), &remote_set_cmdlist, &remote_show_cmdlist);

  add_show_from_set
    (add_set_cmd ("remoteaddresssize", class_obscure,
    var_integer, (char *) &remote_address_size,
    "Set the maximum size of the address (in bits) in a memory packet.\n",

    &setlist),
     &showlist);

  add_packet_config_cmd (&remote_protocol_binary_download,
    "X", "binary-download",
    set_remote_protocol_binary_download_cmd,
    show_remote_protocol_binary_download_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    1);
  add_packet_config_cmd (&remote_protocol_vcont,
    "vCont", "verbose-resume",
    set_remote_protocol_vcont_packet_cmd,
    show_remote_protocol_vcont_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_qSymbol,
    "qSymbol", "symbol-lookup",
    set_remote_protocol_qSymbol_packet_cmd,
    show_remote_protocol_qSymbol_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_e,
    "e", "step-over-range",
    set_remote_protocol_e_packet_cmd,
    show_remote_protocol_e_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);


  remote_protocol_e.detect = AUTO_BOOLEAN_FALSE;
  update_packet_config (&remote_protocol_e);

  add_packet_config_cmd (&remote_protocol_E,
    "E", "step-over-range-w-signal",
    set_remote_protocol_E_packet_cmd,
    show_remote_protocol_E_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);


  remote_protocol_E.detect = AUTO_BOOLEAN_FALSE;
  update_packet_config (&remote_protocol_E);

  add_packet_config_cmd (&remote_protocol_P,
    "P", "set-register",
    set_remote_protocol_P_packet_cmd,
    show_remote_protocol_P_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    1);

  add_packet_config_cmd (&remote_protocol_Z[Z_PACKET_SOFTWARE_BP],
    "Z0", "software-breakpoint",
    set_remote_protocol_Z_software_bp_packet_cmd,
    show_remote_protocol_Z_software_bp_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_Z[Z_PACKET_HARDWARE_BP],
    "Z1", "hardware-breakpoint",
    set_remote_protocol_Z_hardware_bp_packet_cmd,
    show_remote_protocol_Z_hardware_bp_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_Z[Z_PACKET_WRITE_WP],
    "Z2", "write-watchpoint",
    set_remote_protocol_Z_write_wp_packet_cmd,
    show_remote_protocol_Z_write_wp_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_Z[Z_PACKET_READ_WP],
    "Z3", "read-watchpoint",
    set_remote_protocol_Z_read_wp_packet_cmd,
    show_remote_protocol_Z_read_wp_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_Z[Z_PACKET_ACCESS_WP],
    "Z4", "access-watchpoint",
    set_remote_protocol_Z_access_wp_packet_cmd,
    show_remote_protocol_Z_access_wp_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_qPart_auxv,
    "qPart_auxv", "read-aux-vector",
    set_remote_protocol_qPart_auxv_packet_cmd,
    show_remote_protocol_qPart_auxv_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);

  add_packet_config_cmd (&remote_protocol_qPart_dirty,
    "qPart_dirty", "read-dirty-registers",
    set_remote_protocol_qPart_dirty_packet_cmd,
    show_remote_protocol_qPart_dirty_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist,
    0);


  add_setshow_auto_boolean_cmd ("Z-packet", class_obscure,
    &remote_Z_packet_detect, "Set use of remote protocol `Z' packets",

    "Show use of remote protocol `Z' packets ",
    set_remote_protocol_Z_packet_cmd,
    show_remote_protocol_Z_packet_cmd,
    &remote_set_cmdlist, &remote_show_cmdlist);


  initialize_remote_fileio (remote_set_cmdlist, remote_show_cmdlist);
}
