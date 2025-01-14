
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zt_blk; int zt_numblks; scalar_t__ zt_nextblk; int zt_blks_copied; int zt_shift; } ;
typedef TYPE_1__ zap_table_phys_t ;
struct TYPE_12__ {int zap_object; int zap_objset; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
typedef int dmu_tx_t ;
struct TYPE_13__ {uint64_t const* db_data; } ;
typedef TYPE_3__ dmu_buf_t ;


 int ASSERT (int) ;
 int ASSERT0 (int) ;
 int DMU_READ_NO_PREFETCH ;
 int FTAG ;
 int FZAP_BLOCK_SHIFT (TYPE_2__*) ;
 int RW_WRITE_HELD (int *) ;
 int VERIFY0 (int) ;
 int ZIO_PRIORITY_SYNC_READ ;
 int dmu_buf_hold (int ,int ,int,int ,TYPE_3__**,int ) ;
 int dmu_buf_rele (TYPE_3__*,int ) ;
 int dmu_buf_will_dirty (TYPE_3__*,int *) ;
 int dmu_free_range (int ,int ,int,int,int *) ;
 int dmu_prefetch (int ,int ,int ,int,int,int ) ;
 int dprintf (char*,int,int) ;
 int zap_allocate_blocks (TYPE_2__*,int) ;

__attribute__((used)) static int
zap_table_grow(zap_t *zap, zap_table_phys_t *tbl,
    void (*transfer_func)(const uint64_t *src, uint64_t *dst, int n),
    dmu_tx_t *tx)
{
 uint64_t newblk;
 int bs = FZAP_BLOCK_SHIFT(zap);
 int hepb = 1<<(bs-4);


 ASSERT(RW_WRITE_HELD(&zap->zap_rwlock));
 ASSERT(tbl->zt_blk != 0);
 ASSERT(tbl->zt_numblks > 0);

 if (tbl->zt_nextblk != 0) {
  newblk = tbl->zt_nextblk;
 } else {
  newblk = zap_allocate_blocks(zap, tbl->zt_numblks * 2);
  tbl->zt_nextblk = newblk;
  ASSERT0(tbl->zt_blks_copied);
  dmu_prefetch(zap->zap_objset, zap->zap_object, 0,
      tbl->zt_blk << bs, tbl->zt_numblks << bs,
      ZIO_PRIORITY_SYNC_READ);
 }





 uint64_t b = tbl->zt_blks_copied;
 dmu_buf_t *db_old;
 int err = dmu_buf_hold(zap->zap_objset, zap->zap_object,
     (tbl->zt_blk + b) << bs, FTAG, &db_old, DMU_READ_NO_PREFETCH);
 if (err != 0)
  return (err);


 dmu_buf_t *db_new;
 VERIFY0(dmu_buf_hold(zap->zap_objset, zap->zap_object,
     (newblk + 2*b+0) << bs, FTAG, &db_new, DMU_READ_NO_PREFETCH));
 dmu_buf_will_dirty(db_new, tx);
 transfer_func(db_old->db_data, db_new->db_data, hepb);
 dmu_buf_rele(db_new, FTAG);


 VERIFY0(dmu_buf_hold(zap->zap_objset, zap->zap_object,
     (newblk + 2*b+1) << bs, FTAG, &db_new, DMU_READ_NO_PREFETCH));
 dmu_buf_will_dirty(db_new, tx);
 transfer_func((uint64_t *)db_old->db_data + hepb,
     db_new->db_data, hepb);
 dmu_buf_rele(db_new, FTAG);

 dmu_buf_rele(db_old, FTAG);

 tbl->zt_blks_copied++;

 dprintf("copied block %llu of %llu\n",
     tbl->zt_blks_copied, tbl->zt_numblks);

 if (tbl->zt_blks_copied == tbl->zt_numblks) {
  (void) dmu_free_range(zap->zap_objset, zap->zap_object,
      tbl->zt_blk << bs, tbl->zt_numblks << bs, tx);

  tbl->zt_blk = newblk;
  tbl->zt_numblks *= 2;
  tbl->zt_shift++;
  tbl->zt_nextblk = 0;
  tbl->zt_blks_copied = 0;

  dprintf("finished; numblocks now %llu (%uk entries)\n",
      tbl->zt_numblks, 1<<(tbl->zt_shift-10));
 }

 return (0);
}
