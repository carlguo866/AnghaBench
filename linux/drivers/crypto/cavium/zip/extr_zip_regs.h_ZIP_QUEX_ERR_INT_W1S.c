
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int pr_err (char*,int) ;

__attribute__((used)) static inline u64 ZIP_QUEX_ERR_INT_W1S(u64 param1)
{
 if (param1 <= 7)
  return 0x3200ull + (param1 & 7) * 0x8ull;
 pr_err("ZIP_QUEX_ERR_INT_W1S: %llu\n", param1);
 return 0;
}
