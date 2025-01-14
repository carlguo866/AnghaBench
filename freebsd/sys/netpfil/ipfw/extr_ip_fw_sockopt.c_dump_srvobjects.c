
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_obj_ntlv ;
struct TYPE_2__ {int size; int count; int objsize; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
typedef int ip_fw3_opheader ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int export_objhash_ntlv_internal ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int ipfw_objhash_count (int ) ;
 int ipfw_objhash_foreach (int ,int ,struct sockopt_data*) ;

__attribute__((used)) static int
dump_srvobjects(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_lheader *hdr;
 int count;

 hdr = (ipfw_obj_lheader *)ipfw_get_sopt_header(sd, sizeof(*hdr));
 if (hdr == ((void*)0))
  return (EINVAL);

 IPFW_UH_RLOCK(chain);
 count = ipfw_objhash_count(CHAIN_TO_SRV(chain));
 hdr->size = sizeof(ipfw_obj_lheader) + count * sizeof(ipfw_obj_ntlv);
 if (sd->valsize < hdr->size) {
  IPFW_UH_RUNLOCK(chain);
  return (ENOMEM);
 }
 hdr->count = count;
 hdr->objsize = sizeof(ipfw_obj_ntlv);
 if (count > 0)
  ipfw_objhash_foreach(CHAIN_TO_SRV(chain),
      export_objhash_ntlv_internal, sd);
 IPFW_UH_RUNLOCK(chain);
 return (0);
}
