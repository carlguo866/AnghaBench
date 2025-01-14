
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_gate {int flags; int reg; } ;


 int CLK_GATE_BIG_ENDIAN ;
 int ioread32be (int ) ;
 int readl (int ) ;

__attribute__((used)) static inline u32 clk_gate_readl(struct clk_gate *gate)
{
 if (gate->flags & CLK_GATE_BIG_ENDIAN)
  return ioread32be(gate->reg);

 return readl(gate->reg);
}
