
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_unregister (scalar_t__) ;
 scalar_t__ iucv_dbf_data ;
 scalar_t__ iucv_dbf_setup ;
 scalar_t__ iucv_dbf_trace ;

__attribute__((used)) static void iucv_unregister_dbf_views(void)
{
 if (iucv_dbf_setup)
  debug_unregister(iucv_dbf_setup);
 if (iucv_dbf_data)
  debug_unregister(iucv_dbf_data);
 if (iucv_dbf_trace)
  debug_unregister(iucv_dbf_trace);
}
