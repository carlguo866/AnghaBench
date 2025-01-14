
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_balance_args {int flags; int target; } ;


 int BTRFS_BALANCE_ARGS_CONVERT ;
 int BTRFS_EXTENDED_PROFILE_MASK ;
 int chunk_to_extended (int) ;

__attribute__((used)) static int chunk_soft_convert_filter(u64 chunk_type,
         struct btrfs_balance_args *bargs)
{
 if (!(bargs->flags & BTRFS_BALANCE_ARGS_CONVERT))
  return 0;

 chunk_type = chunk_to_extended(chunk_type) &
    BTRFS_EXTENDED_PROFILE_MASK;

 if (bargs->target == chunk_type)
  return 1;

 return 0;
}
