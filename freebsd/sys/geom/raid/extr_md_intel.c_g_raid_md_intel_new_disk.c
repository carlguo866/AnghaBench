
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_raid_conf {scalar_t__ generation; } ;
struct g_raid_softc {struct g_raid_md_object* sc_md; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_intel_perdisk {struct intel_raid_conf* pd_meta; } ;
struct g_raid_md_intel_object {scalar_t__ mdio_generation; int mdio_disks_present; TYPE_1__* mdio_meta; scalar_t__ mdio_started; } ;
struct g_raid_disk {scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ generation; int total_disks; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,...) ;
 int M_MD_INTEL ;
 int free (TYPE_1__*,int ) ;
 int g_raid_md_intel_start (struct g_raid_softc*) ;
 scalar_t__ g_raid_md_intel_start_disk (struct g_raid_disk*) ;
 int g_raid_md_write_intel (struct g_raid_md_object*,int *,int *,int *) ;
 TYPE_1__* intel_meta_copy (struct intel_raid_conf*) ;

__attribute__((used)) static void
g_raid_md_intel_new_disk(struct g_raid_disk *disk)
{
 struct g_raid_softc *sc;
 struct g_raid_md_object *md;
 struct g_raid_md_intel_object *mdi;
 struct intel_raid_conf *pdmeta;
 struct g_raid_md_intel_perdisk *pd;

 sc = disk->d_softc;
 md = sc->sc_md;
 mdi = (struct g_raid_md_intel_object *)md;
 pd = (struct g_raid_md_intel_perdisk *)disk->d_md_data;
 pdmeta = pd->pd_meta;

 if (mdi->mdio_started) {
  if (g_raid_md_intel_start_disk(disk))
   g_raid_md_write_intel(md, ((void*)0), ((void*)0), ((void*)0));
 } else {

  if (mdi->mdio_meta == ((void*)0) ||
      ((int32_t)(pdmeta->generation - mdi->mdio_generation)) > 0) {
   G_RAID_DEBUG1(1, sc, "Newer disk");
   if (mdi->mdio_meta != ((void*)0))
    free(mdi->mdio_meta, M_MD_INTEL);
   mdi->mdio_meta = intel_meta_copy(pdmeta);
   mdi->mdio_generation = mdi->mdio_meta->generation;
   mdi->mdio_disks_present = 1;
  } else if (pdmeta->generation == mdi->mdio_generation) {
   mdi->mdio_disks_present++;
   G_RAID_DEBUG1(1, sc, "Matching disk (%d of %d up)",
       mdi->mdio_disks_present,
       mdi->mdio_meta->total_disks);
  } else {
   G_RAID_DEBUG1(1, sc, "Older disk");
  }

  if (mdi->mdio_disks_present == mdi->mdio_meta->total_disks)
   g_raid_md_intel_start(sc);
 }
}
