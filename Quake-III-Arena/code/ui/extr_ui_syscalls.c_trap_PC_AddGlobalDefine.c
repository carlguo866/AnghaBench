
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_PC_ADD_GLOBAL_DEFINE ;
 int syscall (int ,char*) ;

int trap_PC_AddGlobalDefine( char *define ) {
 return syscall( UI_PC_ADD_GLOBAL_DEFINE, define );
}
