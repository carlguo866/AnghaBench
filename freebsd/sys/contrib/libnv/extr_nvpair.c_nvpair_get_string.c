
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nvp_type; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_STRING ;
 int PJDLOG_ASSERT (int) ;

const char *
nvpair_get_string(const nvpair_t *nvp)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_STRING);

 return ((const char *)(intptr_t)nvp->nvp_data);
}
