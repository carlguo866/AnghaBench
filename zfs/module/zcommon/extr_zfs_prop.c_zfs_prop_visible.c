
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zfs_prop_t ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ pd_zfs_mod_supported; scalar_t__ pd_visible; } ;


 TYPE_1__* zfs_prop_table ;

boolean_t
zfs_prop_visible(zfs_prop_t prop)
{
 return (zfs_prop_table[prop].pd_visible &&
     zfs_prop_table[prop].pd_zfs_mod_supported);
}
