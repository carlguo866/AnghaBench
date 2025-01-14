
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_data {int type; void* filter; void* default_path; } ;
struct obs_property {int dummy; } ;
typedef struct obs_property obs_property_t ;
typedef int obs_properties_t ;
typedef enum obs_path_type { ____Placeholder_obs_path_type } obs_path_type ;


 scalar_t__ OBS_PATH_FILE ;
 int OBS_PROPERTY_PATH ;
 void* bstrdup (char const*) ;
 struct path_data* get_property_data (struct obs_property*) ;
 scalar_t__ has_prop (int *,char const*) ;
 struct obs_property* new_prop (int *,char const*,char const*,int ) ;

obs_property_t *obs_properties_add_path(obs_properties_t *props,
     const char *name, const char *desc,
     enum obs_path_type type,
     const char *filter,
     const char *default_path)
{
 if (!props || has_prop(props, name))
  return ((void*)0);

 struct obs_property *p = new_prop(props, name, desc, OBS_PROPERTY_PATH);
 struct path_data *data = get_property_data(p);
 data->type = type;
 data->default_path = bstrdup(default_path);

 if (data->type == OBS_PATH_FILE)
  data->filter = bstrdup(filter);

 return p;
}
