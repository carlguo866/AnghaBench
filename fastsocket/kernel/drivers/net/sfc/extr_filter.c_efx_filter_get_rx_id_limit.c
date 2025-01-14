
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_state {TYPE_1__* table; } ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;
struct TYPE_2__ {unsigned int size; } ;


 unsigned int EFX_FILTER_INDEX_WIDTH ;
 int EFX_FILTER_MATCH_PRI_COUNT ;
 int* efx_filter_range_table ;

u32 efx_filter_get_rx_id_limit(struct efx_nic *efx)
{
 struct efx_filter_state *state = efx->filter_state;
 unsigned int range = EFX_FILTER_MATCH_PRI_COUNT - 1;
 enum efx_filter_table_id table_id;

 do {
  table_id = efx_filter_range_table[range];
  if (state->table[table_id].size != 0)
   return range << EFX_FILTER_INDEX_WIDTH |
    state->table[table_id].size;
 } while (range--);

 return 0;
}
