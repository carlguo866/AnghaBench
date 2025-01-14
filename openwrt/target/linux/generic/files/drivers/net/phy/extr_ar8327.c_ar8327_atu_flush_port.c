
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8327_ATU_FUNC_BUSY ;
 int AR8327_ATU_FUNC_OP_FLUSH_PORT ;
 int AR8327_ATU_PORT_NUM_S ;
 int AR8327_REG_ATU_FUNC ;
 int ar8216_wait_bit (struct ar8xxx_priv*,int ,int,int ) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;

__attribute__((used)) static int
ar8327_atu_flush_port(struct ar8xxx_priv *priv, int port)
{
 u32 t;
 int ret;

 ret = ar8216_wait_bit(priv, AR8327_REG_ATU_FUNC,
         AR8327_ATU_FUNC_BUSY, 0);
 if (!ret) {
  t = (port << AR8327_ATU_PORT_NUM_S);
  t |= AR8327_ATU_FUNC_OP_FLUSH_PORT;
  t |= AR8327_ATU_FUNC_BUSY;
  ar8xxx_write(priv, AR8327_REG_ATU_FUNC, t);
 }

 return ret;
}
