
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_feature_rss_flow_hash_function {int supported_func; } ;


 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_FUNCTION_FUNCS_MASK ;

__attribute__((used)) static inline void set_ena_admin_feature_rss_flow_hash_function_funcs(struct ena_admin_feature_rss_flow_hash_function *p, uint32_t val)
{
 p->supported_func |= val & ENA_ADMIN_FEATURE_RSS_FLOW_HASH_FUNCTION_FUNCS_MASK;
}
