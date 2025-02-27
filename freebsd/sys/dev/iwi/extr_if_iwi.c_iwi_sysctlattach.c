
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct iwi_softc {scalar_t__ antenna; scalar_t__ bluetooth; int sc_dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_OPAQUE ;
 scalar_t__ IWI_ANTENNA_AUTO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,scalar_t__*,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct iwi_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int iwi_sysctl_radio ;
 int iwi_sysctl_stats ;

__attribute__((used)) static void
iwi_sysctlattach(struct iwi_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "radio",
     CTLTYPE_INT | CTLFLAG_RD, sc, 0, iwi_sysctl_radio, "I",
     "radio transmitter switch state (0=off, 1=on)");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "stats",
     CTLTYPE_OPAQUE | CTLFLAG_RD, sc, 0, iwi_sysctl_stats, "S",
     "statistics");

 sc->bluetooth = 0;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "bluetooth",
     CTLFLAG_RW, &sc->bluetooth, 0, "bluetooth coexistence");

 sc->antenna = IWI_ANTENNA_AUTO;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "antenna",
     CTLFLAG_RW, &sc->antenna, 0, "antenna (0=auto)");
}
