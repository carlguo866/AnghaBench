
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;


 int HCBUFSIZ_TINY ;
 int event_log_error (int *,char*) ;
 char* first_file_in_directory (char*) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int ) ;
 char* hm_SYSFS_get_syspath_device (int *,int const) ;
 int snprintf (char*,int ,char*,char*,...) ;

__attribute__((used)) static char *hm_SYSFS_get_syspath_hwmon (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx)
{
  char *syspath = hm_SYSFS_get_syspath_device (hashcat_ctx, backend_device_idx);

  if (syspath == ((void*)0))
  {
    event_log_error (hashcat_ctx, "hm_SYSFS_get_syspath_device() failed.");

    return ((void*)0);
  }

  char *hwmon = (char *) hcmalloc (HCBUFSIZ_TINY);

  snprintf (hwmon, HCBUFSIZ_TINY, "%s/hwmon", syspath);

  char *hwmonN = first_file_in_directory (hwmon);

  if (hwmonN == ((void*)0))
  {
    event_log_error (hashcat_ctx, "First_file_in_directory() failed.");

    hcfree (syspath);

    hcfree (hwmon);
    hcfree (hwmonN);

    return ((void*)0);
  }

  snprintf (hwmon, HCBUFSIZ_TINY, "%s/hwmon/%s", syspath, hwmonN);

  hcfree (syspath);

  hcfree (hwmonN);

  return hwmon;
}
