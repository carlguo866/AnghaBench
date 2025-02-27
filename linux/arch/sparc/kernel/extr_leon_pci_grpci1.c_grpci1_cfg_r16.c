
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct grpci1_priv {int dummy; } ;


 int EINVAL ;
 int grpci1_cfg_r32 (struct grpci1_priv*,unsigned int,unsigned int,int,int*) ;

__attribute__((used)) static int grpci1_cfg_r16(struct grpci1_priv *priv, unsigned int bus,
    unsigned int devfn, int where, u32 *val)
{
 u32 v;
 int ret;

 if (where & 0x1)
  return -EINVAL;
 ret = grpci1_cfg_r32(priv, bus, devfn, where & ~0x3, &v);
 *val = 0xffff & (v >> (8 * (where & 0x3)));
 return ret;
}
