
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tomoyo_profile {size_t* config; size_t default_config; } ;
struct tomoyo_policy_namespace {int dummy; } ;


 int TOMOYO_CONFIG_DISABLED ;
 size_t TOMOYO_CONFIG_USE_DEFAULT ;
 size_t TOMOYO_MAX_MAC_INDEX ;
 size_t* tomoyo_index2category ;
 int tomoyo_policy_loaded ;
 struct tomoyo_profile* tomoyo_profile (struct tomoyo_policy_namespace const*,size_t const) ;

int tomoyo_get_mode(const struct tomoyo_policy_namespace *ns, const u8 profile,
      const u8 index)
{
 u8 mode;
 struct tomoyo_profile *p;

 if (!tomoyo_policy_loaded)
  return TOMOYO_CONFIG_DISABLED;
 p = tomoyo_profile(ns, profile);
 mode = p->config[index];
 if (mode == TOMOYO_CONFIG_USE_DEFAULT)
  mode = p->config[tomoyo_index2category[index]
     + TOMOYO_MAX_MAC_INDEX];
 if (mode == TOMOYO_CONFIG_USE_DEFAULT)
  mode = p->default_config;
 return mode & 3;
}
