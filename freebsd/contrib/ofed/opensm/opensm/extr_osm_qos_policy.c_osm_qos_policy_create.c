
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int osm_subn_t ;
struct TYPE_4__ {int * p_subn; int qos_match_rules; int qos_levels; int sl2vl_tables; int vlarb_tables; int port_groups; } ;
typedef TYPE_1__ osm_qos_policy_t ;


 int __build_nodebyname_hash (TYPE_1__*) ;
 scalar_t__ calloc (int,int) ;
 int cl_list_construct (int *) ;
 int cl_list_init (int *,int) ;

osm_qos_policy_t * osm_qos_policy_create(osm_subn_t * p_subn)
{
 osm_qos_policy_t * p_qos_policy = (osm_qos_policy_t *)calloc(1, sizeof(osm_qos_policy_t));
 if (!p_qos_policy)
  return ((void*)0);

 cl_list_construct(&p_qos_policy->port_groups);
 cl_list_init(&p_qos_policy->port_groups, 10);

 cl_list_construct(&p_qos_policy->vlarb_tables);
 cl_list_init(&p_qos_policy->vlarb_tables, 10);

 cl_list_construct(&p_qos_policy->sl2vl_tables);
 cl_list_init(&p_qos_policy->sl2vl_tables, 10);

 cl_list_construct(&p_qos_policy->qos_levels);
 cl_list_init(&p_qos_policy->qos_levels, 10);

 cl_list_construct(&p_qos_policy->qos_match_rules);
 cl_list_init(&p_qos_policy->qos_match_rules, 10);

 p_qos_policy->p_subn = p_subn;
 __build_nodebyname_hash(p_qos_policy);

 return p_qos_policy;
}
