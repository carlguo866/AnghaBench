
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_disk {char const* d_name; TYPE_1__* d_consumer; } ;
struct TYPE_2__ {int * provider; } ;



const char *
g_raid3_get_diskname(struct g_raid3_disk *disk)
{

 if (disk->d_consumer == ((void*)0) || disk->d_consumer->provider == ((void*)0))
  return ("[unknown]");
 return (disk->d_name);
}
