
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rpc_request_hdr {void* procedure; void* vers; void* prog; void* rpc_vers; void* xid; } ;


 int atomic_add_return (int,int *) ;
 void* cpu_to_be32 (int) ;
 int memset (struct rpc_request_hdr*,int ,int) ;
 int next_xid ;

void msm_rpc_setup_req(struct rpc_request_hdr *hdr, uint32_t prog,
         uint32_t vers, uint32_t proc)
{
 memset(hdr, 0, sizeof(struct rpc_request_hdr));
 hdr->xid = cpu_to_be32(atomic_add_return(1, &next_xid));
 hdr->rpc_vers = cpu_to_be32(2);
 hdr->prog = cpu_to_be32(prog);
 hdr->vers = cpu_to_be32(vers);
 hdr->procedure = cpu_to_be32(proc);
}
