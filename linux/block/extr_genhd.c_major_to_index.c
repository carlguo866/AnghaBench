
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BLKDEV_MAJOR_HASH_SIZE ;

__attribute__((used)) static inline int major_to_index(unsigned major)
{
 return major % BLKDEV_MAJOR_HASH_SIZE;
}
