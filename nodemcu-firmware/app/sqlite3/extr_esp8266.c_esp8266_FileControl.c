
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;
typedef int esp8266_file ;


 int SQLITE_OK ;
 int dbg_printf (char*) ;

__attribute__((used)) static int esp8266_FileControl(sqlite3_file *id, int op, void *arg)
{
 esp8266_file *file = (esp8266_file*) id;

 dbg_printf("esp8266_FileControl:\n");
 return SQLITE_OK;
}
