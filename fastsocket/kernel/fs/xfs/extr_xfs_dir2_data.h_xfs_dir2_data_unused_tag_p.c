
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ xfs_dir2_data_unused_t ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static inline __be16 *
xfs_dir2_data_unused_tag_p(xfs_dir2_data_unused_t *dup)
{
 return (__be16 *)((char *)dup +
   be16_to_cpu(dup->length) - sizeof(__be16));
}
