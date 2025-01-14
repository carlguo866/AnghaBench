
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_bootrom_header {int block_checksum; int data_size; int target_addr; } ;
struct i2400m {scalar_t__ boot_mode; scalar_t__ (* bus_bm_cmd_send ) (struct i2400m*,struct i2400m_bootrom_header const*,size_t,int) ;scalar_t__ (* bus_bm_wait_for_ack ) (struct i2400m*,struct i2400m_bootrom_header*,size_t) ;int bm_cmd_buf; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int BUG_ON (int) ;
 scalar_t__ ENOMEM ;
 int I2400M_BM_CMD_RAW ;
 scalar_t__ __i2400m_bm_ack_verify (struct i2400m*,int,struct i2400m_bootrom_header*,size_t,int) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_bootrom_header const*,size_t,struct i2400m_bootrom_header*,size_t,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_bootrom_header const*,size_t,struct i2400m_bootrom_header*,size_t) ;
 int d_printf (int,struct device*,char*,int,int ,int ,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*,int,int) ;
 int i2400m_brh_get_direct_access (struct i2400m_bootrom_header const*) ;
 int i2400m_brh_get_opcode (struct i2400m_bootrom_header const*) ;
 int i2400m_brh_get_response_required (struct i2400m_bootrom_header const*) ;
 int i2400m_brh_get_use_checksum (struct i2400m_bootrom_header const*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int memcpy (int ,struct i2400m_bootrom_header const*,size_t) ;
 scalar_t__ stub1 (struct i2400m*,struct i2400m_bootrom_header const*,size_t,int) ;
 scalar_t__ stub2 (struct i2400m*,struct i2400m_bootrom_header*,size_t) ;

__attribute__((used)) static
ssize_t i2400m_bm_cmd(struct i2400m *i2400m,
        const struct i2400m_bootrom_header *cmd, size_t cmd_size,
        struct i2400m_bootrom_header *ack, size_t ack_size,
        int flags)
{
 ssize_t result = -ENOMEM, rx_bytes;
 struct device *dev = i2400m_dev(i2400m);
 int opcode = cmd == ((void*)0) ? -1 : i2400m_brh_get_opcode(cmd);

 d_fnstart(6, dev, "(i2400m %p cmd %p size %zu ack %p size %zu)\n",
    i2400m, cmd, cmd_size, ack, ack_size);
 BUG_ON(ack_size < sizeof(*ack));
 BUG_ON(i2400m->boot_mode == 0);

 if (cmd != ((void*)0)) {
  memcpy(i2400m->bm_cmd_buf, cmd, cmd_size);
  result = i2400m->bus_bm_cmd_send(i2400m, cmd, cmd_size, flags);
  if (result < 0)
   goto error_cmd_send;
  if ((flags & I2400M_BM_CMD_RAW) == 0)
   d_printf(5, dev,
     "boot-mode cmd %d csum %u rr %u da %u: "
     "addr 0x%04x size %u block csum 0x%04x\n",
     opcode, i2400m_brh_get_use_checksum(cmd),
     i2400m_brh_get_response_required(cmd),
     i2400m_brh_get_direct_access(cmd),
     cmd->target_addr, cmd->data_size,
     cmd->block_checksum);
 }
 result = i2400m->bus_bm_wait_for_ack(i2400m, ack, ack_size);
 if (result < 0) {
  dev_err(dev, "boot-mode cmd %d: error waiting for an ack: %d\n",
   opcode, (int) result);
  goto error_wait_for_ack;
 }
 rx_bytes = result;


 result = __i2400m_bm_ack_verify(i2400m, opcode, ack, ack_size, flags);
 if (result < 0)
  goto error_bad_ack;



 result = rx_bytes;
error_bad_ack:
error_wait_for_ack:
error_cmd_send:
 d_fnend(6, dev, "(i2400m %p cmd %p size %zu ack %p size %zu) = %d\n",
  i2400m, cmd, cmd_size, ack, ack_size, (int) result);
 return result;
}
