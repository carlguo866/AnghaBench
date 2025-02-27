
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dummy; } ;
struct qca8k_fdb {int vid; int aging; int port_mask; int* mac; } ;


 int QCA8K_ATU_ADDR0_S ;
 int QCA8K_ATU_ADDR2_S ;
 int QCA8K_ATU_ADDR3_S ;
 int QCA8K_ATU_ADDR4_S ;
 int QCA8K_ATU_PORT_M ;
 int QCA8K_ATU_PORT_S ;
 int QCA8K_ATU_STATUS_M ;
 int QCA8K_ATU_VID_M ;
 int QCA8K_ATU_VID_S ;
 scalar_t__ QCA8K_REG_ATU_DATA0 ;
 int qca8k_read (struct qca8k_priv*,scalar_t__) ;

__attribute__((used)) static void
qca8k_fdb_read(struct qca8k_priv *priv, struct qca8k_fdb *fdb)
{
 u32 reg[4];
 int i;


 for (i = 0; i < 4; i++)
  reg[i] = qca8k_read(priv, QCA8K_REG_ATU_DATA0 + (i * 4));


 fdb->vid = (reg[2] >> QCA8K_ATU_VID_S) & QCA8K_ATU_VID_M;

 fdb->aging = reg[2] & QCA8K_ATU_STATUS_M;

 fdb->port_mask = (reg[1] >> QCA8K_ATU_PORT_S) & QCA8K_ATU_PORT_M;

 fdb->mac[0] = (reg[1] >> QCA8K_ATU_ADDR0_S) & 0xff;
 fdb->mac[1] = reg[1] & 0xff;
 fdb->mac[2] = (reg[0] >> QCA8K_ATU_ADDR2_S) & 0xff;
 fdb->mac[3] = (reg[0] >> QCA8K_ATU_ADDR3_S) & 0xff;
 fdb->mac[4] = (reg[0] >> QCA8K_ATU_ADDR4_S) & 0xff;
 fdb->mac[5] = reg[0] & 0xff;
}
