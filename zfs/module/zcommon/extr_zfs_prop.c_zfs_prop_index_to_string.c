
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;


 int ZFS_TYPE_DATASET ;
 int zprop_index_to_string (int ,int ,char const**,int ) ;

int
zfs_prop_index_to_string(zfs_prop_t prop, uint64_t index, const char **string)
{
 return (zprop_index_to_string(prop, index, string, ZFS_TYPE_DATASET));
}
