
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct obs_data {int dummy; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ obs_data_item_t ;
typedef enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;


 TYPE_1__* get_item (struct obs_data*,char const*) ;
 int set_item_data (struct obs_data*,TYPE_1__**,char const*,void const*,size_t,int,int,int) ;

__attribute__((used)) static inline void set_item_def(struct obs_data *data, obs_data_item_t **item,
    const char *name, const void *ptr, size_t size,
    enum obs_data_type type)
{
 obs_data_item_t *actual_item = ((void*)0);

 if (!data && !item)
  return;

 if (!item) {
  actual_item = get_item(data, name);
  item = &actual_item;
 }

 if (item && *item && (*item)->type != type)
  return;

 set_item_data(data, item, name, ptr, size, type, 1, 0);
}
