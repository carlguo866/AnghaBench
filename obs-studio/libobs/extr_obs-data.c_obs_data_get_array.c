
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_array_t ;


 int get_item (int *,char const*) ;
 int * obs_data_item_get_array (int ) ;

obs_data_array_t *obs_data_get_array(obs_data_t *data, const char *name)
{
 return obs_data_item_get_array(get_item(data, name));
}
