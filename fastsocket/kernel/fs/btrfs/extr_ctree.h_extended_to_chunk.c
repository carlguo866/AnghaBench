
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BTRFS_AVAIL_ALLOC_BIT_SINGLE ;

__attribute__((used)) static inline u64 extended_to_chunk(u64 flags)
{
 return flags & ~BTRFS_AVAIL_ALLOC_BIT_SINGLE;
}
