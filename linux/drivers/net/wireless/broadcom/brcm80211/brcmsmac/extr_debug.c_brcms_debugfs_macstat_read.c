
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct brcms_pub* private; } ;
struct macstat {int bphy_badplcp; int phywatchdog; int bphy_rxcrsglitch; int txburst; int txglitch_nack; int txnack; int frmscons; int rxnack; int prs_timeout; int txcgprssuc; int txcgprsfail; int rxcgprsqovfl; int rxcgprqfrm; int pmqovfl; int txsfovfl; int rxf2ovfl; int rxf1ovfl; int rxf0ovfl; int bcntxcancl; int rxrsptmout; int rxbeaconobss; int rxdfrmucastobss; int rxbeaconmbss; int rxcfrmmcast; int rxmfrmmcast; int rxdfrmmcast; int rxctsocast; int rxrtsocast; int rxcfrmocast; int rxmfrmocast; int rxdfrmocast; int rxackucast; int rxctsucast; int rxrtsucast; int rxcfrmucast; int rxmfrmucastmbss; int rxdfrmucastmbss; int rxstrt; int rxcrsglitch; int rxbadplcp; int rxbadfcs; int rxinvmachdr; int rxfrmtooshrt; int rxfrmtoolong; int pktengrxdmcast; int pktengrxducast; int txphyerr; int txtplunfl; int * txfunfl; int txbcnfrm; int txdnlfrm; int txackfrm; int txctsfrm; int txrtsfrm; int txallfrm; } ;
struct brcms_pub {TYPE_3__* wlc; TYPE_1__* ieee_hw; } ;
struct brcms_info {int lock; } ;
struct TYPE_6__ {TYPE_2__* core; } ;
struct TYPE_5__ {struct macstat* macstat_snapshot; } ;
struct TYPE_4__ {struct brcms_info* priv; } ;


 int ARRAY_SIZE (int *) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int brcms_debugfs_macstat_read(struct seq_file *s, void *data)
{
 struct brcms_pub *drvr = s->private;
 struct brcms_info *wl = drvr->ieee_hw->priv;
 struct macstat stats;
 int i;

 spin_lock_bh(&wl->lock);
 stats = *(drvr->wlc->core->macstat_snapshot);
 spin_unlock_bh(&wl->lock);

 seq_printf(s, "txallfrm: %d\n", stats.txallfrm);
 seq_printf(s, "txrtsfrm: %d\n", stats.txrtsfrm);
 seq_printf(s, "txctsfrm: %d\n", stats.txctsfrm);
 seq_printf(s, "txackfrm: %d\n", stats.txackfrm);
 seq_printf(s, "txdnlfrm: %d\n", stats.txdnlfrm);
 seq_printf(s, "txbcnfrm: %d\n", stats.txbcnfrm);
 seq_printf(s, "txfunfl[8]:");
 for (i = 0; i < ARRAY_SIZE(stats.txfunfl); i++)
  seq_printf(s, " %d", stats.txfunfl[i]);
 seq_printf(s, "\ntxtplunfl: %d\n", stats.txtplunfl);
 seq_printf(s, "txphyerr: %d\n", stats.txphyerr);
 seq_printf(s, "pktengrxducast: %d\n", stats.pktengrxducast);
 seq_printf(s, "pktengrxdmcast: %d\n", stats.pktengrxdmcast);
 seq_printf(s, "rxfrmtoolong: %d\n", stats.rxfrmtoolong);
 seq_printf(s, "rxfrmtooshrt: %d\n", stats.rxfrmtooshrt);
 seq_printf(s, "rxinvmachdr: %d\n", stats.rxinvmachdr);
 seq_printf(s, "rxbadfcs: %d\n", stats.rxbadfcs);
 seq_printf(s, "rxbadplcp: %d\n", stats.rxbadplcp);
 seq_printf(s, "rxcrsglitch: %d\n", stats.rxcrsglitch);
 seq_printf(s, "rxstrt: %d\n", stats.rxstrt);
 seq_printf(s, "rxdfrmucastmbss: %d\n", stats.rxdfrmucastmbss);
 seq_printf(s, "rxmfrmucastmbss: %d\n", stats.rxmfrmucastmbss);
 seq_printf(s, "rxcfrmucast: %d\n", stats.rxcfrmucast);
 seq_printf(s, "rxrtsucast: %d\n", stats.rxrtsucast);
 seq_printf(s, "rxctsucast: %d\n", stats.rxctsucast);
 seq_printf(s, "rxackucast: %d\n", stats.rxackucast);
 seq_printf(s, "rxdfrmocast: %d\n", stats.rxdfrmocast);
 seq_printf(s, "rxmfrmocast: %d\n", stats.rxmfrmocast);
 seq_printf(s, "rxcfrmocast: %d\n", stats.rxcfrmocast);
 seq_printf(s, "rxrtsocast: %d\n", stats.rxrtsocast);
 seq_printf(s, "rxctsocast: %d\n", stats.rxctsocast);
 seq_printf(s, "rxdfrmmcast: %d\n", stats.rxdfrmmcast);
 seq_printf(s, "rxmfrmmcast: %d\n", stats.rxmfrmmcast);
 seq_printf(s, "rxcfrmmcast: %d\n", stats.rxcfrmmcast);
 seq_printf(s, "rxbeaconmbss: %d\n", stats.rxbeaconmbss);
 seq_printf(s, "rxdfrmucastobss: %d\n", stats.rxdfrmucastobss);
 seq_printf(s, "rxbeaconobss: %d\n", stats.rxbeaconobss);
 seq_printf(s, "rxrsptmout: %d\n", stats.rxrsptmout);
 seq_printf(s, "bcntxcancl: %d\n", stats.bcntxcancl);
 seq_printf(s, "rxf0ovfl: %d\n", stats.rxf0ovfl);
 seq_printf(s, "rxf1ovfl: %d\n", stats.rxf1ovfl);
 seq_printf(s, "rxf2ovfl: %d\n", stats.rxf2ovfl);
 seq_printf(s, "txsfovfl: %d\n", stats.txsfovfl);
 seq_printf(s, "pmqovfl: %d\n", stats.pmqovfl);
 seq_printf(s, "rxcgprqfrm: %d\n", stats.rxcgprqfrm);
 seq_printf(s, "rxcgprsqovfl: %d\n", stats.rxcgprsqovfl);
 seq_printf(s, "txcgprsfail: %d\n", stats.txcgprsfail);
 seq_printf(s, "txcgprssuc: %d\n", stats.txcgprssuc);
 seq_printf(s, "prs_timeout: %d\n", stats.prs_timeout);
 seq_printf(s, "rxnack: %d\n", stats.rxnack);
 seq_printf(s, "frmscons: %d\n", stats.frmscons);
 seq_printf(s, "txnack: %d\n", stats.txnack);
 seq_printf(s, "txglitch_nack: %d\n", stats.txglitch_nack);
 seq_printf(s, "txburst: %d\n", stats.txburst);
 seq_printf(s, "bphy_rxcrsglitch: %d\n", stats.bphy_rxcrsglitch);
 seq_printf(s, "phywatchdog: %d\n", stats.phywatchdog);
 seq_printf(s, "bphy_badplcp: %d\n", stats.bphy_badplcp);
 return 0;
}
