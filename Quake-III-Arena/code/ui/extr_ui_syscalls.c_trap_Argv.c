
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_ARGV ;
 int syscall (int ,int,char*,int) ;

void trap_Argv( int n, char *buffer, int bufferLength ) {
 syscall( UI_ARGV, n, buffer, bufferLength );
}
