
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_string (int *,char*,char*) ;

__attribute__((used)) static void coreaudio_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, "device_id", "default");
}
