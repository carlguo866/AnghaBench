
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8327_REG_VTU_FUNC0 ;
 int AR8327_REG_VTU_FUNC1 ;
 int AR8327_VTU_FUNC1_BUSY ;
 int AR8327_VTU_FUNC1_OP ;
 int AR8327_VTU_FUNC1_OP_LOAD ;
 scalar_t__ ar8216_wait_bit (struct ar8xxx_priv*,int ,int,int ) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static void
ar8327_vtu_op(struct ar8xxx_priv *priv, u32 op, u32 val)
{
 if (ar8216_wait_bit(priv, AR8327_REG_VTU_FUNC1,
       AR8327_VTU_FUNC1_BUSY, 0))
  return;

 if ((op & AR8327_VTU_FUNC1_OP) == AR8327_VTU_FUNC1_OP_LOAD)
  ar8xxx_write(priv, AR8327_REG_VTU_FUNC0, val);

 op |= AR8327_VTU_FUNC1_BUSY;
 ar8xxx_write(priv, AR8327_REG_VTU_FUNC1, op);
}
