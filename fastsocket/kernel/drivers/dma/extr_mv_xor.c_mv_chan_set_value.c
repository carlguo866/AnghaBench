
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_INIT_VALUE_HIGH (struct mv_xor_chan*) ;
 int XOR_INIT_VALUE_LOW (struct mv_xor_chan*) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void mv_chan_set_value(struct mv_xor_chan *chan, u32 value)
{
 __raw_writel(value, XOR_INIT_VALUE_LOW(chan));
 __raw_writel(value, XOR_INIT_VALUE_HIGH(chan));
}
