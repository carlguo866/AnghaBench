
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; int set; } ;
struct TYPE_5__ {int flags; int plat_plen; int plat_prefix; } ;
struct nat64stl_cfg {int map46; int map64; TYPE_2__ no; TYPE_1__ base; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_7__ {int flags; int ntlv4; int ntlv6; int name; int set; int plen6; int prefix6; } ;
typedef TYPE_3__ ipfw_nat64stl_cfg ;


 int NAT64STL_FLAGSMASK ;
 int ipfw_export_obj_ntlv (struct named_object*,int *) ;
 struct named_object* ipfw_objhash_lookup_table_kidx (struct ip_fw_chain*,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
nat64stl_export_config(struct ip_fw_chain *ch, struct nat64stl_cfg *cfg,
    ipfw_nat64stl_cfg *uc)
{
 struct named_object *no;

 uc->prefix6 = cfg->base.plat_prefix;
 uc->plen6 = cfg->base.plat_plen;
 uc->flags = cfg->base.flags & NAT64STL_FLAGSMASK;
 uc->set = cfg->no.set;
 strlcpy(uc->name, cfg->no.name, sizeof(uc->name));

 no = ipfw_objhash_lookup_table_kidx(ch, cfg->map64);
 ipfw_export_obj_ntlv(no, &uc->ntlv6);
 no = ipfw_objhash_lookup_table_kidx(ch, cfg->map46);
 ipfw_export_obj_ntlv(no, &uc->ntlv4);
}
