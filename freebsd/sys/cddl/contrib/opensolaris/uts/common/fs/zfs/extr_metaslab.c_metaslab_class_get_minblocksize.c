
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int mc_minblocksize; } ;
typedef TYPE_1__ metaslab_class_t ;



uint64_t
metaslab_class_get_minblocksize(metaslab_class_t *mc)
{
 return (mc->mc_minblocksize);
}
