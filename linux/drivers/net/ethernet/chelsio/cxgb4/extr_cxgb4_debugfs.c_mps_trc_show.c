
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_params {int skip_ofst; int port; int skip_len; int * mask; int * data; scalar_t__ invert; int min_len; int snap_len; } ;
struct seq_file {unsigned int private; } ;
struct adapter {int* chan_map; TYPE_1__** port; int pdev_dev; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int MAX_NPORTS ;
 int TRACE_LEN ;
 int dev_err (int ,char*,...) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int t4_get_trace_filter (struct adapter*,struct trace_params*,unsigned int,int*) ;

__attribute__((used)) static int mps_trc_show(struct seq_file *seq, void *v)
{
 int enabled, i;
 struct trace_params tp;
 unsigned int trcidx = (uintptr_t)seq->private & 3;
 struct adapter *adap = seq->private - trcidx;

 t4_get_trace_filter(adap, &tp, trcidx, &enabled);
 if (!enabled) {
  seq_puts(seq, "tracer is disabled\n");
  return 0;
 }

 if (tp.skip_ofst * 8 >= TRACE_LEN) {
  dev_err(adap->pdev_dev, "illegal trace pattern skip offset\n");
  return -EINVAL;
 }
 if (tp.port < 8) {
  i = adap->chan_map[tp.port & 3];
  if (i >= MAX_NPORTS) {
   dev_err(adap->pdev_dev, "tracer %u is assigned "
    "to non-existing port\n", trcidx);
   return -EINVAL;
  }
  seq_printf(seq, "tracer is capturing %s %s, ",
      adap->port[i]->name, tp.port < 4 ? "Rx" : "Tx");
 } else
  seq_printf(seq, "tracer is capturing loopback %d, ",
      tp.port - 8);
 seq_printf(seq, "snap length: %u, min length: %u\n", tp.snap_len,
     tp.min_len);
 seq_printf(seq, "packets captured %smatch filter\n",
     tp.invert ? "do not " : "");

 if (tp.skip_ofst) {
  seq_puts(seq, "filter pattern: ");
  for (i = 0; i < tp.skip_ofst * 2; i += 2)
   seq_printf(seq, "%08x%08x", tp.data[i], tp.data[i + 1]);
  seq_putc(seq, '/');
  for (i = 0; i < tp.skip_ofst * 2; i += 2)
   seq_printf(seq, "%08x%08x", tp.mask[i], tp.mask[i + 1]);
  seq_puts(seq, "@0\n");
 }

 seq_puts(seq, "filter pattern: ");
 for (i = tp.skip_ofst * 2; i < TRACE_LEN / 4; i += 2)
  seq_printf(seq, "%08x%08x", tp.data[i], tp.data[i + 1]);
 seq_putc(seq, '/');
 for (i = tp.skip_ofst * 2; i < TRACE_LEN / 4; i += 2)
  seq_printf(seq, "%08x%08x", tp.mask[i], tp.mask[i + 1]);
 seq_printf(seq, "@%u\n", (tp.skip_ofst + tp.skip_len) * 8);
 return 0;
}
