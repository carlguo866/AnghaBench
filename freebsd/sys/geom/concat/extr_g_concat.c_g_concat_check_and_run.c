
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct g_provider {int flags; size_t mediasize; size_t sectorsize; int name; int stripeoffset; int stripesize; } ;
struct g_concat_softc {scalar_t__ sc_ndisks; scalar_t__ sc_type; struct g_provider* sc_provider; struct g_concat_disk* sc_disks; int sc_name; int sc_geom; } ;
struct g_concat_disk {size_t d_start; size_t d_end; TYPE_1__* d_consumer; scalar_t__ d_candelete; } ;
typedef void* off_t ;
struct TYPE_3__ {struct g_provider* provider; } ;


 int G_CONCAT_DEBUG (int,char*,int ,...) ;
 scalar_t__ G_CONCAT_TYPE_AUTOMATIC ;
 int G_PF_ACCEPT_UNMAPPED ;
 int G_PF_DIRECT_RECEIVE ;
 int G_PF_DIRECT_SEND ;
 int g_access (TYPE_1__*,int,int ,int ) ;
 scalar_t__ g_concat_nvalid (struct g_concat_softc*) ;
 int g_error_provider (struct g_provider*,int ) ;
 int g_getattr (char*,TYPE_1__*,scalar_t__*) ;
 struct g_provider* g_new_providerf (int ,char*,int ) ;
 int g_topology_assert () ;
 size_t lcm (size_t,size_t) ;

__attribute__((used)) static void
g_concat_check_and_run(struct g_concat_softc *sc)
{
 struct g_concat_disk *disk;
 struct g_provider *dp, *pp;
 u_int no, sectorsize = 0;
 off_t start;
 int error;

 g_topology_assert();
 if (g_concat_nvalid(sc) != sc->sc_ndisks)
  return;

 pp = g_new_providerf(sc->sc_geom, "concat/%s", sc->sc_name);
 pp->flags |= G_PF_DIRECT_SEND | G_PF_DIRECT_RECEIVE |
     G_PF_ACCEPT_UNMAPPED;
 start = 0;
 for (no = 0; no < sc->sc_ndisks; no++) {
  disk = &sc->sc_disks[no];
  dp = disk->d_consumer->provider;
  disk->d_start = start;
  disk->d_end = disk->d_start + dp->mediasize;
  if (sc->sc_type == G_CONCAT_TYPE_AUTOMATIC)
   disk->d_end -= dp->sectorsize;
  start = disk->d_end;
  error = g_access(disk->d_consumer, 1, 0, 0);
  if (error == 0) {
   error = g_getattr("GEOM::candelete", disk->d_consumer,
       &disk->d_candelete);
   if (error != 0)
    disk->d_candelete = 0;
   (void)g_access(disk->d_consumer, -1, 0, 0);
  } else
   G_CONCAT_DEBUG(1, "Failed to access disk %s, error %d.",
       dp->name, error);
  if (no == 0)
   sectorsize = dp->sectorsize;
  else
   sectorsize = lcm(sectorsize, dp->sectorsize);


  if ((dp->flags & G_PF_ACCEPT_UNMAPPED) == 0) {
   G_CONCAT_DEBUG(1, "Cancelling unmapped "
       "because of %s.", dp->name);
   pp->flags &= ~G_PF_ACCEPT_UNMAPPED;
  }
 }
 pp->sectorsize = sectorsize;

 pp->mediasize = start;
 pp->stripesize = sc->sc_disks[0].d_consumer->provider->stripesize;
 pp->stripeoffset = sc->sc_disks[0].d_consumer->provider->stripeoffset;
 sc->sc_provider = pp;
 g_error_provider(pp, 0);

 G_CONCAT_DEBUG(0, "Device %s activated.", sc->sc_provider->name);
}
