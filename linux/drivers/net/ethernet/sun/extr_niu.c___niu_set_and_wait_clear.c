
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct niu {int dev; } ;


 int __niu_wait_bits_clear (struct niu*,unsigned long,scalar_t__,int,int) ;
 int netdev_err (int ,char*,unsigned long long,char const*,unsigned long long) ;
 scalar_t__ nr64 (unsigned long) ;
 int nw64 (unsigned long,scalar_t__) ;

__attribute__((used)) static int __niu_set_and_wait_clear(struct niu *np, unsigned long reg,
        u64 bits, int limit, int delay,
        const char *reg_name)
{
 int err;

 nw64(reg, bits);
 err = __niu_wait_bits_clear(np, reg, bits, limit, delay);
 if (err)
  netdev_err(np->dev, "bits (%llx) of register %s would not clear, val[%llx]\n",
      (unsigned long long)bits, reg_name,
      (unsigned long long)nr64(reg));
 return err;
}
