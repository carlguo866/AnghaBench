
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t xfs_mask64lo(int n)
{
 return ((uint64_t)1 << (n)) - 1;
}
