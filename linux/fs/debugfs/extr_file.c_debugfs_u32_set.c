
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static int debugfs_u32_set(void *data, u64 val)
{
 *(u32 *)data = val;
 return 0;
}
