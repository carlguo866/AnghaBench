
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_core_options_intl {struct retro_core_option_definition* local; struct retro_core_option_definition* us; } ;
struct retro_core_option_value {char const* value; char* label; } ;
struct retro_core_option_definition {char const* key; char* desc; char* info; struct retro_core_option_value* values; int default_value; } ;


 scalar_t__ calloc (size_t,int) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char const*) ;

__attribute__((used)) static struct retro_core_option_definition *core_option_manager_get_definitions(
      const struct retro_core_options_intl *core_options_intl)
{
   size_t i;
   size_t num_options = 0;
   struct retro_core_option_definition *option_defs_us = ((void*)0);
   struct retro_core_option_definition *option_defs_local = ((void*)0);
   struct retro_core_option_definition *option_defs = ((void*)0);

   if (!core_options_intl)
      return ((void*)0);

   option_defs_us = core_options_intl->us;
   option_defs_local = core_options_intl->local;

   if (!option_defs_us)
      return ((void*)0);


   while (1)
   {
      if (!string_is_empty(option_defs_us[num_options].key))
         num_options++;
      else
         break;
   }

   if (num_options < 1)
      return ((void*)0);





   option_defs = (struct retro_core_option_definition *)calloc(
         num_options + 1, sizeof(struct retro_core_option_definition));

   if (!option_defs)
      return ((void*)0);


   for (i = 0; i < num_options; i++)
   {
      size_t j;
      size_t num_values = 0;
      const char *key = option_defs_us[i].key;
      const char *local_desc = ((void*)0);
      const char *local_info = ((void*)0);
      struct retro_core_option_value *local_values = ((void*)0);


      option_defs[i].key = key;


      option_defs[i].default_value = option_defs_us[i].default_value;


      if (option_defs_local)
      {
         size_t index = 0;

         while (1)
         {
            const char *local_key = option_defs_local[index].key;

            if (!string_is_empty(local_key))
            {
               if (string_is_equal(key, local_key))
               {
                  local_desc = option_defs_local[index].desc;
                  local_info = option_defs_local[index].info;
                  local_values = option_defs_local[index].values;
                  break;
               }
               else
                  index++;
            }
            else
               break;
         }
      }


      option_defs[i].desc = string_is_empty(local_desc) ? option_defs_us[i].desc : local_desc;
      option_defs[i].info = string_is_empty(local_info) ? option_defs_us[i].info : local_info;



      while (1)
      {
         if (!string_is_empty(option_defs_us[i].values[num_values].value))
            num_values++;
         else
            break;
      }


      for (j = 0; j < num_values; j++)
      {
         const char *value = option_defs_us[i].values[j].value;
         const char *local_label = ((void*)0);


         option_defs[i].values[j].value = value;


         if (local_values)
         {
            size_t value_index = 0;

            while (1)
            {
               const char *local_value = local_values[value_index].value;

               if (!string_is_empty(local_value))
               {
                  if (string_is_equal(value, local_value))
                  {
                     local_label = local_values[value_index].label;
                     break;
                  }
                  else
                     value_index++;
               }
               else
                  break;
            }
         }


         option_defs[i].values[j].label = string_is_empty(local_label) ?
               option_defs_us[i].values[j].label : local_label;
      }
   }

   return option_defs;
}
