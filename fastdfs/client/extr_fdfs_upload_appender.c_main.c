
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_level; } ;
typedef int ConnectionInfo ;


 int ECONNREFUSED ;
 int FDFS_GROUP_NAME_MAX_LEN ;
 int LOG_ERR ;
 char* STRERROR (int) ;
 scalar_t__ errno ;
 int fdfs_client_destroy () ;
 int fdfs_client_init (char*) ;
 int fprintf (int ,char*,int,char*) ;
 TYPE_1__ g_log_context ;
 int ignore_signal_pipe () ;
 int log_init () ;
 int printf (char*,char*) ;
 int stderr ;
 int storage_upload_appender_by_filename1 (int *,int *,int,char*,int *,int *,int ,char*,char*) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_get_connection () ;
 int tracker_query_storage_store (int *,int *,char*,int*) ;

int main(int argc, char *argv[])
{
 char *conf_filename;
 char *local_filename;
 char group_name[FDFS_GROUP_NAME_MAX_LEN + 1];
 ConnectionInfo *pTrackerServer;
 int result;
 int store_path_index;
 ConnectionInfo storageServer;
 char file_id[128];

 if (argc < 3)
 {
  printf("Usage: %s <config_file> <local_filename>\n", argv[0]);
  return 1;
 }

 log_init();
 g_log_context.log_level = LOG_ERR;
 ignore_signal_pipe();

 conf_filename = argv[1];
 if ((result=fdfs_client_init(conf_filename)) != 0)
 {
  return result;
 }

 pTrackerServer = tracker_get_connection();
 if (pTrackerServer == ((void*)0))
 {
  fdfs_client_destroy();
  return errno != 0 ? errno : ECONNREFUSED;
 }


 *group_name = '\0';
 store_path_index = 0;
 if ((result=tracker_query_storage_store(pTrackerServer, &storageServer, group_name, &store_path_index)) != 0)

 {
  fdfs_client_destroy();
  fprintf(stderr, "tracker_query_storage fail, " "error no: %d, error info: %s\n", result, STRERROR(result));


  return result;
 }

 local_filename = argv[2];
 result = storage_upload_appender_by_filename1(pTrackerServer, &storageServer, store_path_index, local_filename, ((void*)0), ((void*)0), 0, group_name, file_id);



 if (result != 0)
 {
  fprintf(stderr, "upload file fail, " "error no: %d, error info: %s\n", result, STRERROR(result));



  tracker_close_connection_ex(pTrackerServer, 1);
  fdfs_client_destroy();
  return result;
 }

 printf("%s\n", file_id);

 tracker_close_connection_ex(pTrackerServer, 1);
 fdfs_client_destroy();

 return 0;
}
