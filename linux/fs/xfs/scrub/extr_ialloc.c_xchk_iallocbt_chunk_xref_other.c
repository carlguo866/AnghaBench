
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_agino_t ;
struct TYPE_3__ {struct xfs_btree_cur* fino_cur; struct xfs_btree_cur* ino_cur; } ;
struct xfs_scrub {TYPE_1__ sa; TYPE_2__* sm; } ;
struct xfs_inobt_rec_incore {scalar_t__ ir_freecount; } ;
struct xfs_btree_cur {int dummy; } ;
struct TYPE_4__ {scalar_t__ sm_type; } ;


 scalar_t__ XFS_SCRUB_TYPE_FINOBT ;
 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,struct xfs_btree_cur*,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,struct xfs_btree_cur**) ;
 int xfs_ialloc_has_inode_record (struct xfs_btree_cur*,int ,int ,int*) ;

__attribute__((used)) static inline void
xchk_iallocbt_chunk_xref_other(
 struct xfs_scrub *sc,
 struct xfs_inobt_rec_incore *irec,
 xfs_agino_t agino)
{
 struct xfs_btree_cur **pcur;
 bool has_irec;
 int error;

 if (sc->sm->sm_type == XFS_SCRUB_TYPE_FINOBT)
  pcur = &sc->sa.ino_cur;
 else
  pcur = &sc->sa.fino_cur;
 if (!(*pcur))
  return;
 error = xfs_ialloc_has_inode_record(*pcur, agino, agino, &has_irec);
 if (!xchk_should_check_xref(sc, &error, pcur))
  return;
 if (((irec->ir_freecount > 0 && !has_irec) ||
      (irec->ir_freecount == 0 && has_irec)))
  xchk_btree_xref_set_corrupt(sc, *pcur, 0);
}
