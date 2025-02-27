
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int dummy; } ;
struct dcn10_resource_pool {struct resource_pool base; } ;
struct dc_init_data {int num_virtual_links; } ;
struct dc {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ construct (int ,struct dc*,struct dcn10_resource_pool*) ;
 int kfree (struct dcn10_resource_pool*) ;
 struct dcn10_resource_pool* kzalloc (int,int ) ;

struct resource_pool *dcn10_create_resource_pool(
  const struct dc_init_data *init_data,
  struct dc *dc)
{
 struct dcn10_resource_pool *pool =
  kzalloc(sizeof(struct dcn10_resource_pool), GFP_KERNEL);

 if (!pool)
  return ((void*)0);

 if (construct(init_data->num_virtual_links, dc, pool))
  return &pool->base;

 kfree(pool);
 BREAK_TO_DEBUGGER();
 return ((void*)0);
}
