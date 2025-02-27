
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8216_REG_VTU ;
 int AR8216_REG_VTU_DATA ;
 int AR8216_VTUDATA_MEMBER ;
 int AR8216_VTUDATA_VALID ;
 int AR8216_VTU_ACTIVE ;
 int AR8216_VTU_OP ;
 int AR8216_VTU_OP_LOAD ;
 scalar_t__ ar8216_wait_bit (struct ar8xxx_priv*,int ,int,int ) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static void
ar8216_vtu_op(struct ar8xxx_priv *priv, u32 op, u32 val)
{
 if (ar8216_wait_bit(priv, AR8216_REG_VTU, AR8216_VTU_ACTIVE, 0))
  return;
 if ((op & AR8216_VTU_OP) == AR8216_VTU_OP_LOAD) {
  val &= AR8216_VTUDATA_MEMBER;
  val |= AR8216_VTUDATA_VALID;
  ar8xxx_write(priv, AR8216_REG_VTU_DATA, val);
 }
 op |= AR8216_VTU_ACTIVE;
 ar8xxx_write(priv, AR8216_REG_VTU, op);
}
