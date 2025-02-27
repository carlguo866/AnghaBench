
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_18__ ;


struct TYPE_38__ {int zp_copies; size_t zp_checksum; int zp_dedup; scalar_t__ zp_dedup_verify; } ;
struct TYPE_37__ {scalar_t__ io_txg; int io_flags; int io_size; int io_abd; int io_bookmark; int io_priority; int io_orig_size; int io_orig_abd; scalar_t__ io_bp_override; int io_pipeline; int io_stage; TYPE_2__ io_prop; TYPE_5__* io_bp; int * io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef TYPE_2__ zio_prop_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int ddt_t ;
struct TYPE_39__ {scalar_t__ ddp_phys_birth; } ;
typedef TYPE_3__ ddt_phys_t ;
struct TYPE_40__ {TYPE_1__** dde_lead_zio; TYPE_3__* dde_phys; } ;
typedef TYPE_4__ ddt_entry_t ;
struct TYPE_41__ {scalar_t__ blk_birth; } ;
typedef TYPE_5__ blkptr_t ;
struct TYPE_36__ {int ci_flags; } ;


 int ASSERT (int) ;
 int BP_EQUAL (TYPE_5__*,scalar_t__) ;
 size_t BP_GET_CHECKSUM (TYPE_5__*) ;
 int BP_GET_DEDUP (TYPE_5__*) ;
 scalar_t__ BP_IS_HOLE (TYPE_5__*) ;
 int BP_SET_DEDUP (TYPE_5__*,int ) ;
 int BP_ZERO (TYPE_5__*) ;
 int B_FALSE ;
 int B_TRUE ;
 int ZCHECKSUM_FLAG_DEDUP ;
 int ZIO_DDT_CHILD_FLAGS (TYPE_1__*) ;
 int ZIO_FLAG_RAW ;
 int ZIO_STAGE_OPEN ;
 int ZIO_WRITE_PIPELINE ;
 int ddt_bp_fill (TYPE_3__*,TYPE_5__*,scalar_t__) ;
 int ddt_enter (int *) ;
 int ddt_exit (int *) ;
 TYPE_4__* ddt_lookup (int *,TYPE_5__*,int ) ;
 int ddt_phys_addref (TYPE_3__*) ;
 int ddt_phys_fill (TYPE_3__*,TYPE_5__*) ;
 int * ddt_select (int *,TYPE_5__*) ;
 size_t spa_dedup_checksum (int *) ;
 int zio_add_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_18__* zio_checksum_table ;
 int zio_ddt_child_write_done ;
 int zio_ddt_child_write_ready ;
 scalar_t__ zio_ddt_collision (TYPE_1__*,int *,TYPE_4__*) ;
 int zio_nowait (TYPE_1__*) ;
 int zio_pop_transforms (TYPE_1__*) ;
 int zio_push_transform (TYPE_1__*,int ,int ,int ,int *) ;
 TYPE_1__* zio_write (TYPE_1__*,int *,scalar_t__,TYPE_5__*,int ,int ,int ,TYPE_2__*,int ,int *,int *,int ,TYPE_4__*,int ,int ,int *) ;

__attribute__((used)) static zio_t *
zio_ddt_write(zio_t *zio)
{
 spa_t *spa = zio->io_spa;
 blkptr_t *bp = zio->io_bp;
 uint64_t txg = zio->io_txg;
 zio_prop_t *zp = &zio->io_prop;
 int p = zp->zp_copies;
 zio_t *cio = ((void*)0);
 ddt_t *ddt = ddt_select(spa, bp);
 ddt_entry_t *dde;
 ddt_phys_t *ddp;

 ASSERT(BP_GET_DEDUP(bp));
 ASSERT(BP_GET_CHECKSUM(bp) == zp->zp_checksum);
 ASSERT(BP_IS_HOLE(bp) || zio->io_bp_override);
 ASSERT(!(zio->io_bp_override && (zio->io_flags & ZIO_FLAG_RAW)));

 ddt_enter(ddt);
 dde = ddt_lookup(ddt, bp, B_TRUE);
 ddp = &dde->dde_phys[p];

 if (zp->zp_dedup_verify && zio_ddt_collision(zio, ddt, dde)) {






  if (!(zio_checksum_table[zp->zp_checksum].ci_flags &
      ZCHECKSUM_FLAG_DEDUP)) {
   zp->zp_checksum = spa_dedup_checksum(spa);
   zio_pop_transforms(zio);
   zio->io_stage = ZIO_STAGE_OPEN;
   BP_ZERO(bp);
  } else {
   zp->zp_dedup = B_FALSE;
   BP_SET_DEDUP(bp, B_FALSE);
  }
  ASSERT(!BP_GET_DEDUP(bp));
  zio->io_pipeline = ZIO_WRITE_PIPELINE;
  ddt_exit(ddt);
  return (zio);
 }

 if (ddp->ddp_phys_birth != 0 || dde->dde_lead_zio[p] != ((void*)0)) {
  if (ddp->ddp_phys_birth != 0)
   ddt_bp_fill(ddp, bp, txg);
  if (dde->dde_lead_zio[p] != ((void*)0))
   zio_add_child(zio, dde->dde_lead_zio[p]);
  else
   ddt_phys_addref(ddp);
 } else if (zio->io_bp_override) {
  ASSERT(bp->blk_birth == txg);
  ASSERT(BP_EQUAL(bp, zio->io_bp_override));
  ddt_phys_fill(ddp, bp);
  ddt_phys_addref(ddp);
 } else {
  cio = zio_write(zio, spa, txg, bp, zio->io_orig_abd,
      zio->io_orig_size, zio->io_orig_size, zp,
      zio_ddt_child_write_ready, ((void*)0), ((void*)0),
      zio_ddt_child_write_done, dde, zio->io_priority,
      ZIO_DDT_CHILD_FLAGS(zio), &zio->io_bookmark);

  zio_push_transform(cio, zio->io_abd, zio->io_size, 0, ((void*)0));
  dde->dde_lead_zio[p] = cio;
 }

 ddt_exit(ddt);

 if (cio)
  zio_nowait(cio);

 return (zio);
}
