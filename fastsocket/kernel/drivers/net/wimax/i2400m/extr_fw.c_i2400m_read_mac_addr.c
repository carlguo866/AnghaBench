
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dev_addr; int perm_addr; int addr_len; } ;
struct i2400m_bootrom_header {void* data_size; void* target_addr; int command; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {int bus_bm_mac_addr_impaired; struct i2400m_bootrom_header* bm_cmd_buf; TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;
typedef int ack_buf ;


 int ETH_ALEN ;
 int I2400M_BRH_READ ;
 void* cpu_to_le32 (int) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int d_printf (int,struct device*,char*,int,int,int,int,int,int) ;
 int dev_err (struct device*,char*,int,...) ;
 int get_random_bytes (int*,int) ;
 int i2400m_bm_cmd (struct i2400m*,struct i2400m_bootrom_header*,int,struct i2400m_bootrom_header*,int,int ) ;
 int i2400m_brh_command (int ,int ,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int memcpy (int ,int*,int ) ;

int i2400m_read_mac_addr(struct i2400m *i2400m)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;
 struct i2400m_bootrom_header *cmd;
 struct {
  struct i2400m_bootrom_header ack;
  u8 ack_pl[16];
 } __attribute__((packed)) ack_buf;

 d_fnstart(5, dev, "(i2400m %p)\n", i2400m);
 cmd = i2400m->bm_cmd_buf;
 cmd->command = i2400m_brh_command(I2400M_BRH_READ, 0, 1);
 cmd->target_addr = cpu_to_le32(0x00203fe8);
 cmd->data_size = cpu_to_le32(6);
 result = i2400m_bm_cmd(i2400m, cmd, sizeof(*cmd),
          &ack_buf.ack, sizeof(ack_buf), 0);
 if (result < 0) {
  dev_err(dev, "BM: read mac addr failed: %d\n", result);
  goto error_read_mac;
 }
 d_printf(2, dev,
   "mac addr is %02x:%02x:%02x:%02x:%02x:%02x\n",
   ack_buf.ack_pl[0], ack_buf.ack_pl[1],
   ack_buf.ack_pl[2], ack_buf.ack_pl[3],
   ack_buf.ack_pl[4], ack_buf.ack_pl[5]);
 if (i2400m->bus_bm_mac_addr_impaired == 1) {
  ack_buf.ack_pl[0] = 0x00;
  ack_buf.ack_pl[1] = 0x16;
  ack_buf.ack_pl[2] = 0xd3;
  get_random_bytes(&ack_buf.ack_pl[3], 3);
  dev_err(dev, "BM is MAC addr impaired, faking MAC addr to "
   "mac addr is %02x:%02x:%02x:%02x:%02x:%02x\n",
   ack_buf.ack_pl[0], ack_buf.ack_pl[1],
   ack_buf.ack_pl[2], ack_buf.ack_pl[3],
   ack_buf.ack_pl[4], ack_buf.ack_pl[5]);
  result = 0;
 }
 net_dev->addr_len = ETH_ALEN;
 memcpy(net_dev->perm_addr, ack_buf.ack_pl, ETH_ALEN);
 memcpy(net_dev->dev_addr, ack_buf.ack_pl, ETH_ALEN);
error_read_mac:
 d_fnend(5, dev, "(i2400m %p) = %d\n", i2400m, result);
 return result;
}
