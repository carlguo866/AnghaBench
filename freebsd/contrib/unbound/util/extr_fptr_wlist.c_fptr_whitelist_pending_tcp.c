
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comm_point_callback_type ;


 int libworker_handle_reply ;
 int serviced_tcp_callback ;
 int worker_handle_reply ;

int
fptr_whitelist_pending_tcp(comm_point_callback_type *fptr)
{
 if(fptr == &serviced_tcp_callback) return 1;
 else if(fptr == &worker_handle_reply) return 1;
 else if(fptr == &libworker_handle_reply) return 1;
 return 0;
}
