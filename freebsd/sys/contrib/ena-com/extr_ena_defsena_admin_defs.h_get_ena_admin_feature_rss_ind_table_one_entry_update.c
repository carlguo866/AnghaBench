
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ena_admin_feature_rss_ind_table {int flags; } ;


 int ENA_ADMIN_FEATURE_RSS_IND_TABLE_ONE_ENTRY_UPDATE_MASK ;

__attribute__((used)) static inline uint8_t get_ena_admin_feature_rss_ind_table_one_entry_update(const struct ena_admin_feature_rss_ind_table *p)
{
 return p->flags & ENA_ADMIN_FEATURE_RSS_IND_TABLE_ONE_ENTRY_UPDATE_MASK;
}
