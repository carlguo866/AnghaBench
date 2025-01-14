
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_states_chunk {int dummy; } ;
struct nat64lsn_pgchunk {int dummy; } ;
struct nat64lsn_pg {int dummy; } ;
struct nat64lsn_job_item {int dummy; } ;
struct nat64lsn_host {int dummy; } ;
struct nat64lsn_aliaslink {int dummy; } ;


 int JQUEUE_LOCK_INIT () ;
 int UMA_ALIGN_PTR ;
 void* nat64lsn_aliaslink_zone ;
 void* nat64lsn_host_zone ;
 void* nat64lsn_job_zone ;
 void* nat64lsn_pg_zone ;
 void* nat64lsn_pgchunk_zone ;
 int * nat64lsn_state_ctor ;
 void* nat64lsn_state_zone ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

void
nat64lsn_init_internal(void)
{

 nat64lsn_host_zone = uma_zcreate("NAT64LSN hosts",
     sizeof(struct nat64lsn_host), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 nat64lsn_pgchunk_zone = uma_zcreate("NAT64LSN portgroup chunks",
     sizeof(struct nat64lsn_pgchunk), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 nat64lsn_pg_zone = uma_zcreate("NAT64LSN portgroups",
     sizeof(struct nat64lsn_pg), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 nat64lsn_aliaslink_zone = uma_zcreate("NAT64LSN links",
     sizeof(struct nat64lsn_aliaslink), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 nat64lsn_state_zone = uma_zcreate("NAT64LSN states",
     sizeof(struct nat64lsn_states_chunk), nat64lsn_state_ctor,
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 nat64lsn_job_zone = uma_zcreate("NAT64LSN jobs",
     sizeof(struct nat64lsn_job_item), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 JQUEUE_LOCK_INIT();
}
