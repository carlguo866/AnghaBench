
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MARK_ITEM_BINLOG_OFFSET ;
 char* MARK_ITEM_FETCH_BINLOG_DONE ;
 char* MARK_ITEM_SAVED_STORAGE_STATUS ;
 int MAX_PATH_SIZE ;
 int recovery_get_mark_filename (char const*,char*) ;
 int saved_storage_status ;
 int sprintf (char*,char*,char*,int,char*,char*,int const) ;
 int writeToFile (char*,char*,int) ;

__attribute__((used)) static int recovery_init_mark_file(const char *pBasePath, const bool fetch_binlog_done)

{
 char full_filename[MAX_PATH_SIZE];
 char buff[128];
 int len;

 recovery_get_mark_filename(pBasePath, full_filename);

 len = sprintf(buff, "%s=%d\n" "%s=0\n" "%s=%d\n", MARK_ITEM_SAVED_STORAGE_STATUS, saved_storage_status, MARK_ITEM_BINLOG_OFFSET, MARK_ITEM_FETCH_BINLOG_DONE, fetch_binlog_done);






 return writeToFile(full_filename, buff, len);
}
