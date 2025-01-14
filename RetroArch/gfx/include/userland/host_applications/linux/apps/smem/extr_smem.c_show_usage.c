
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcos_log_info (char*) ;

__attribute__((used)) static void show_usage( void )
{
   vcos_log_info( "Usage: smem [OPTION]..." );
   vcos_log_info( "  -a, --alloc=SIZE             Allocates a block of SIZE" );
   vcos_log_info( "  -p, --pid=PID                Use PID for desired action" );
   vcos_log_info( "  -s, --status=TYPE            Queries status of TYPE [for PID]" );
   vcos_log_info( "                all                    all (for current pid)" );
   vcos_log_info( "                vc                     videocore allocations" );
   vcos_log_info( "                map                    host map status" );
   vcos_log_info( "                map <pid>              host map status for pid" );
   vcos_log_info( "                host <pid>             host allocations for pid" );
   vcos_log_info( "  -h, --help                   Print this information" );
}
