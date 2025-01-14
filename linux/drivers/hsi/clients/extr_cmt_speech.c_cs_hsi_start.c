
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_client {int device; } ;
struct cs_mmap_config_block {int dummy; } ;
struct cs_hsi_iface {unsigned long mmap_base; unsigned long mmap_size; int iface_state; int master; int datawait; struct cs_mmap_config_block* mmap_cfg; struct hsi_client* cl; int lock; } ;


 int BUG_ON (int) ;
 int CS_STATE_CLOSED ;
 int CS_STATE_OPENED ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cs_alloc_cmds (struct cs_hsi_iface*) ;
 int cs_free_cmds (struct cs_hsi_iface*) ;
 int cs_hsi_alloc_data (struct cs_hsi_iface*) ;
 int cs_hsi_free_data (struct cs_hsi_iface*) ;
 int cs_hsi_read_on_control (struct cs_hsi_iface*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hsi_claim_port (struct hsi_client*,int) ;
 int hsi_release_port (struct hsi_client*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct cs_hsi_iface*) ;
 struct cs_hsi_iface* kzalloc (int,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memset (struct cs_mmap_config_block*,int ,int) ;
 int spin_lock_init (int *) ;
 int ssip_slave_get_master (struct hsi_client*) ;
 int ssip_slave_running (int ) ;

__attribute__((used)) static int cs_hsi_start(struct cs_hsi_iface **hi, struct hsi_client *cl,
   unsigned long mmap_base, unsigned long mmap_size)
{
 int err = 0;
 struct cs_hsi_iface *hsi_if = kzalloc(sizeof(*hsi_if), GFP_KERNEL);

 dev_dbg(&cl->device, "cs_hsi_start\n");

 if (!hsi_if) {
  err = -ENOMEM;
  goto leave0;
 }
 spin_lock_init(&hsi_if->lock);
 hsi_if->cl = cl;
 hsi_if->iface_state = CS_STATE_CLOSED;
 hsi_if->mmap_cfg = (struct cs_mmap_config_block *)mmap_base;
 hsi_if->mmap_base = mmap_base;
 hsi_if->mmap_size = mmap_size;
 memset(hsi_if->mmap_cfg, 0, sizeof(*hsi_if->mmap_cfg));
 init_waitqueue_head(&hsi_if->datawait);
 err = cs_alloc_cmds(hsi_if);
 if (err < 0) {
  dev_err(&cl->device, "Unable to alloc HSI messages\n");
  goto leave1;
 }
 err = cs_hsi_alloc_data(hsi_if);
 if (err < 0) {
  dev_err(&cl->device, "Unable to alloc HSI messages for data\n");
  goto leave2;
 }
 err = hsi_claim_port(cl, 1);
 if (err < 0) {
  dev_err(&cl->device,
    "Could not open, HSI port already claimed\n");
  goto leave3;
 }
 hsi_if->master = ssip_slave_get_master(cl);
 if (IS_ERR(hsi_if->master)) {
  err = PTR_ERR(hsi_if->master);
  dev_err(&cl->device, "Could not get HSI master client\n");
  goto leave4;
 }
 if (!ssip_slave_running(hsi_if->master)) {
  err = -ENODEV;
  dev_err(&cl->device,
    "HSI port not initialized\n");
  goto leave4;
 }

 hsi_if->iface_state = CS_STATE_OPENED;
 local_bh_disable();
 cs_hsi_read_on_control(hsi_if);
 local_bh_enable();

 dev_dbg(&cl->device, "cs_hsi_start...done\n");

 BUG_ON(!hi);
 *hi = hsi_if;

 return 0;

leave4:
 hsi_release_port(cl);
leave3:
 cs_hsi_free_data(hsi_if);
leave2:
 cs_free_cmds(hsi_if);
leave1:
 kfree(hsi_if);
leave0:
 dev_dbg(&cl->device, "cs_hsi_start...done/error\n\n");

 return err;
}
