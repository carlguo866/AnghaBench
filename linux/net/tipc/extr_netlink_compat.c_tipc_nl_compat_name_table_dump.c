
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nl_compat_msg {int rep; int req; } ;
struct tipc_name_table_query {int upbound; int lowbound; int type; int depth; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t TIPC_NLA_NAME_TABLE ;
 int TIPC_NLA_NAME_TABLE_MAX ;
 size_t TIPC_NLA_NAME_TABLE_PUBL ;
 size_t TIPC_NLA_PUBL_KEY ;
 size_t TIPC_NLA_PUBL_LOWER ;
 int TIPC_NLA_PUBL_MAX ;
 size_t TIPC_NLA_PUBL_NODE ;
 size_t TIPC_NLA_PUBL_REF ;
 size_t TIPC_NLA_PUBL_SCOPE ;
 size_t TIPC_NLA_PUBL_TYPE ;
 size_t TIPC_NLA_PUBL_UPPER ;
 int TIPC_NTQ_ALLTYPES ;
 scalar_t__ TLV_DATA (int ) ;
 size_t nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int ntohl (int ) ;
 int sprintf (char*,char*,int,int,int,size_t) ;
 int tipc_cluster (int) ;
 int tipc_node (int) ;
 int tipc_tlv_sprintf (int ,char*,...) ;
 int tipc_zone (int) ;

__attribute__((used)) static int tipc_nl_compat_name_table_dump(struct tipc_nl_compat_msg *msg,
       struct nlattr **attrs)
{
 char port_str[27];
 struct tipc_name_table_query *ntq;
 struct nlattr *nt[TIPC_NLA_NAME_TABLE_MAX + 1];
 struct nlattr *publ[TIPC_NLA_PUBL_MAX + 1];
 u32 node, depth, type, lowbound, upbound;
 static const char * const scope_str[] = {"", " zone", " cluster",
       " node"};
 int err;

 if (!attrs[TIPC_NLA_NAME_TABLE])
  return -EINVAL;

 err = nla_parse_nested_deprecated(nt, TIPC_NLA_NAME_TABLE_MAX,
       attrs[TIPC_NLA_NAME_TABLE], ((void*)0),
       ((void*)0));
 if (err)
  return err;

 if (!nt[TIPC_NLA_NAME_TABLE_PUBL])
  return -EINVAL;

 err = nla_parse_nested_deprecated(publ, TIPC_NLA_PUBL_MAX,
       nt[TIPC_NLA_NAME_TABLE_PUBL], ((void*)0),
       ((void*)0));
 if (err)
  return err;

 ntq = (struct tipc_name_table_query *)TLV_DATA(msg->req);

 depth = ntohl(ntq->depth);
 type = ntohl(ntq->type);
 lowbound = ntohl(ntq->lowbound);
 upbound = ntohl(ntq->upbound);

 if (!(depth & TIPC_NTQ_ALLTYPES) &&
     (type != nla_get_u32(publ[TIPC_NLA_PUBL_TYPE])))
  return 0;
 if (lowbound && (lowbound > nla_get_u32(publ[TIPC_NLA_PUBL_UPPER])))
  return 0;
 if (upbound && (upbound < nla_get_u32(publ[TIPC_NLA_PUBL_LOWER])))
  return 0;

 tipc_tlv_sprintf(msg->rep, "%-10u ",
    nla_get_u32(publ[TIPC_NLA_PUBL_TYPE]));

 if (depth == 1)
  goto out;

 tipc_tlv_sprintf(msg->rep, "%-10u %-10u ",
    nla_get_u32(publ[TIPC_NLA_PUBL_LOWER]),
    nla_get_u32(publ[TIPC_NLA_PUBL_UPPER]));

 if (depth == 2)
  goto out;

 node = nla_get_u32(publ[TIPC_NLA_PUBL_NODE]);
 sprintf(port_str, "<%u.%u.%u:%u>", tipc_zone(node), tipc_cluster(node),
  tipc_node(node), nla_get_u32(publ[TIPC_NLA_PUBL_REF]));
 tipc_tlv_sprintf(msg->rep, "%-26s ", port_str);

 if (depth == 3)
  goto out;

 tipc_tlv_sprintf(msg->rep, "%-10u %s",
    nla_get_u32(publ[TIPC_NLA_PUBL_KEY]),
    scope_str[nla_get_u32(publ[TIPC_NLA_PUBL_SCOPE])]);
out:
 tipc_tlv_sprintf(msg->rep, "\n");

 return 0;
}
