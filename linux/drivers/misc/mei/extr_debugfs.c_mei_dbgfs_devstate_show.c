
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mei_device* private; } ;
struct mei_device {scalar_t__ hbm_state; int hbm_f_dr_supported; int hbm_f_os_supported; int hbm_f_fa_supported; int hbm_f_ev_supported; int hbm_f_dot_supported; int hbm_f_ie_supported; int hbm_f_dc_supported; int hbm_f_pg_supported; int dev_state; } ;


 scalar_t__ MEI_HBM_ENUM_CLIENTS ;
 scalar_t__ MEI_HBM_STARTED ;
 int mei_dev_state_str (int ) ;
 int mei_hbm_state_str (scalar_t__) ;
 scalar_t__ mei_pg_is_enabled (struct mei_device*) ;
 int mei_pg_state (struct mei_device*) ;
 int mei_pg_state_str (int ) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int mei_dbgfs_devstate_show(struct seq_file *m, void *unused)
{
 struct mei_device *dev = m->private;

 seq_printf(m, "dev: %s\n", mei_dev_state_str(dev->dev_state));
 seq_printf(m, "hbm: %s\n", mei_hbm_state_str(dev->hbm_state));

 if (dev->hbm_state >= MEI_HBM_ENUM_CLIENTS &&
     dev->hbm_state <= MEI_HBM_STARTED) {
  seq_puts(m, "hbm features:\n");
  seq_printf(m, "\tPG: %01d\n", dev->hbm_f_pg_supported);
  seq_printf(m, "\tDC: %01d\n", dev->hbm_f_dc_supported);
  seq_printf(m, "\tIE: %01d\n", dev->hbm_f_ie_supported);
  seq_printf(m, "\tDOT: %01d\n", dev->hbm_f_dot_supported);
  seq_printf(m, "\tEV: %01d\n", dev->hbm_f_ev_supported);
  seq_printf(m, "\tFA: %01d\n", dev->hbm_f_fa_supported);
  seq_printf(m, "\tOS: %01d\n", dev->hbm_f_os_supported);
  seq_printf(m, "\tDR: %01d\n", dev->hbm_f_dr_supported);
 }

 seq_printf(m, "pg:  %s, %s\n",
     mei_pg_is_enabled(dev) ? "ENABLED" : "DISABLED",
     mei_pg_state_str(mei_pg_state(dev)));
 return 0;
}
