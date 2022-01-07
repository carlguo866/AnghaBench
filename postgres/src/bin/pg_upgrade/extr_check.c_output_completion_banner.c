
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major_version; } ;


 int GET_MAJOR_VERSION (int ) ;
 int PG_REPORT ;
 TYPE_1__ old_cluster ;
 int pg_log (int ,char*,...) ;

void
output_completion_banner(char *analyze_script_file_name,
       char *deletion_script_file_name)
{

 if (GET_MAJOR_VERSION(old_cluster.major_version) >= 804)
  pg_log(PG_REPORT,
      "Optimizer statistics are not transferred by pg_upgrade so,\n"
      "once you start the new server, consider running:\n"
      "    %s\n\n", analyze_script_file_name);
 else
  pg_log(PG_REPORT,
      "Optimizer statistics and free space information are not transferred\n"
      "by pg_upgrade so, once you start the new server, consider running:\n"
      "    %s\n\n", analyze_script_file_name);


 if (deletion_script_file_name)
  pg_log(PG_REPORT,
      "Running this script will delete the old cluster's data files:\n"
      "    %s\n",
      deletion_script_file_name);
 else
  pg_log(PG_REPORT,
      "Could not create a script to delete the old cluster's data files\n"
      "because user-defined tablespaces or the new cluster's data directory\n"
      "exist in the old cluster directory.  The old cluster's contents must\n"
      "be deleted manually.\n");
}
