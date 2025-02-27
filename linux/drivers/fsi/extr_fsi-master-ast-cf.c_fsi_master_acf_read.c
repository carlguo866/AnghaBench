
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int lock; int dev; } ;
struct fsi_master {int dummy; } ;


 int ENODEV ;
 int build_ar_command (struct fsi_master_acf*,struct fsi_msg*,int ,int ,size_t,int *) ;
 int dev_dbg (int ,char*,int ,int ,int) ;
 int fsi_master_acf_xfer (struct fsi_master_acf*,int ,struct fsi_msg*,size_t,void*) ;
 int last_address_update (struct fsi_master_acf*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_acf* to_fsi_master_acf (struct fsi_master*) ;

__attribute__((used)) static int fsi_master_acf_read(struct fsi_master *_master, int link,
          uint8_t id, uint32_t addr, void *val,
          size_t size)
{
 struct fsi_master_acf *master = to_fsi_master_acf(_master);
 struct fsi_msg cmd;
 int rc;

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->lock);
 dev_dbg(master->dev, "read id %d addr %x size %zd\n", id, addr, size);
 build_ar_command(master, &cmd, id, addr, size, ((void*)0));
 rc = fsi_master_acf_xfer(master, id, &cmd, size, val);
 last_address_update(master, id, rc == 0, addr);
 if (rc)
  dev_dbg(master->dev, "read id %d addr 0x%08x err: %d\n",
   id, addr, rc);
 mutex_unlock(&master->lock);

 return rc;
}
