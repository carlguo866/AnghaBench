
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ds_fsid_guid; } ;
typedef TYPE_1__ dsl_dataset_t ;



uint64_t
dsl_dataset_fsid_guid(dsl_dataset_t *ds)
{
 return (ds->ds_fsid_guid);
}
