
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct fxp_hwstats {int tx_tco; int tx_pause; int tx_total_collisions; int tx_multiple_collisions; int tx_single_collisions; int tx_deffered; int tx_lostcrs; int tx_underruns; int tx_latecols; int tx_maxcols; int tx_good; int rx_tco; int rx_controls; int rx_pause; int rx_shortframes; int rx_cdt_errors; int rx_overrun_errors; int rx_rnr_errors; int rx_alignment_errors; int rx_crc_errors; int rx_good; } ;
struct fxp_softc {scalar_t__ revision; struct fxp_hwstats fxp_hwstats; scalar_t__ rnr; int tunable_bundle_max; int dev; int tunable_int_delay; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 scalar_t__ FXP_REV_82558_A4 ;
 scalar_t__ FXP_REV_82559_A0 ;
 int FXP_SYSCTL_STAT_ADD (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,scalar_t__*,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TUNABLE_BUNDLE_MAX ;
 int TUNABLE_INT_DELAY ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int resource_int_value (int ,int ,char*,int *) ;
 int sysctl_hw_fxp_bundle_max ;
 int sysctl_hw_fxp_int_delay ;

__attribute__((used)) static void
fxp_sysctl_node(struct fxp_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct fxp_hwstats *hsp;

 ctx = device_get_sysctl_ctx(sc->dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));

 SYSCTL_ADD_PROC(ctx, child,
     OID_AUTO, "int_delay", CTLTYPE_INT | CTLFLAG_RW,
     &sc->tunable_int_delay, 0, sysctl_hw_fxp_int_delay, "I",
     "FXP driver receive interrupt microcode bundling delay");
 SYSCTL_ADD_PROC(ctx, child,
     OID_AUTO, "bundle_max", CTLTYPE_INT | CTLFLAG_RW,
     &sc->tunable_bundle_max, 0, sysctl_hw_fxp_bundle_max, "I",
     "FXP driver receive interrupt microcode bundle size limit");
 SYSCTL_ADD_INT(ctx, child,OID_AUTO, "rnr", CTLFLAG_RD, &sc->rnr, 0,
     "FXP RNR events");




 sc->tunable_int_delay = TUNABLE_INT_DELAY;
 sc->tunable_bundle_max = TUNABLE_BUNDLE_MAX;
 (void) resource_int_value(device_get_name(sc->dev),
     device_get_unit(sc->dev), "int_delay", &sc->tunable_int_delay);
 (void) resource_int_value(device_get_name(sc->dev),
     device_get_unit(sc->dev), "bundle_max", &sc->tunable_bundle_max);
 sc->rnr = 0;

 hsp = &sc->fxp_hwstats;
 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "FXP statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "Rx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 FXP_SYSCTL_STAT_ADD(ctx, child, "good_frames",
     &hsp->rx_good, "Good frames");
 FXP_SYSCTL_STAT_ADD(ctx, child, "crc_errors",
     &hsp->rx_crc_errors, "CRC errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "alignment_errors",
     &hsp->rx_alignment_errors, "Alignment errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "rnr_errors",
     &hsp->rx_rnr_errors, "RNR errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "overrun_errors",
     &hsp->rx_overrun_errors, "Overrun errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "cdt_errors",
     &hsp->rx_cdt_errors, "Collision detect errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "shortframes",
     &hsp->rx_shortframes, "Short frame errors");
 if (sc->revision >= FXP_REV_82558_A4) {
  FXP_SYSCTL_STAT_ADD(ctx, child, "pause",
      &hsp->rx_pause, "Pause frames");
  FXP_SYSCTL_STAT_ADD(ctx, child, "controls",
      &hsp->rx_controls, "Unsupported control frames");
 }
 if (sc->revision >= FXP_REV_82559_A0)
  FXP_SYSCTL_STAT_ADD(ctx, child, "tco",
      &hsp->rx_tco, "TCO frames");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "Tx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 FXP_SYSCTL_STAT_ADD(ctx, child, "good_frames",
     &hsp->tx_good, "Good frames");
 FXP_SYSCTL_STAT_ADD(ctx, child, "maxcols",
     &hsp->tx_maxcols, "Maximum collisions errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "latecols",
     &hsp->tx_latecols, "Late collisions errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "underruns",
     &hsp->tx_underruns, "Underrun errors");
 FXP_SYSCTL_STAT_ADD(ctx, child, "lostcrs",
     &hsp->tx_lostcrs, "Lost carrier sense");
 FXP_SYSCTL_STAT_ADD(ctx, child, "deffered",
     &hsp->tx_deffered, "Deferred");
 FXP_SYSCTL_STAT_ADD(ctx, child, "single_collisions",
     &hsp->tx_single_collisions, "Single collisions");
 FXP_SYSCTL_STAT_ADD(ctx, child, "multiple_collisions",
     &hsp->tx_multiple_collisions, "Multiple collisions");
 FXP_SYSCTL_STAT_ADD(ctx, child, "total_collisions",
     &hsp->tx_total_collisions, "Total collisions");
 if (sc->revision >= FXP_REV_82558_A4)
  FXP_SYSCTL_STAT_ADD(ctx, child, "pause",
      &hsp->tx_pause, "Pause frames");
 if (sc->revision >= FXP_REV_82559_A0)
  FXP_SYSCTL_STAT_ADD(ctx, child, "tco",
      &hsp->tx_tco, "TCO frames");
}
