
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
typedef int xfs_agino_t ;
typedef scalar_t__ xfs_agblock_t ;
struct TYPE_4__ {int agi_bp; int agfl_bp; int agf_bp; int agno; } ;
struct xfs_scrub {TYPE_2__ sa; struct xfs_mount* mp; TYPE_1__* sm; } ;
struct xfs_perag {int pagi_count; int pagi_freecount; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_agi {scalar_t__ agi_pad32; int agi_freecount; int agi_count; int * agi_unlinked; int agi_dirino; int agi_newino; int agi_free_level; int agi_free_root; int agi_level; int agi_root; int agi_length; } ;
struct TYPE_3__ {int sm_agno; } ;


 int XFS_AGI_BLOCK (struct xfs_mount*) ;
 int XFS_AGI_UNLINKED_BUCKETS ;
 int XFS_BTREE_MAXLEVELS ;
 struct xfs_agi* XFS_BUF_TO_AGI (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xchk_ag_read_headers (struct xfs_scrub*,int ,int *,int *,int *) ;
 int xchk_agi_xref (struct xfs_scrub*) ;
 int xchk_block_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_buffer_recheck (struct xfs_scrub*,int ) ;
 int xchk_process_error (struct xfs_scrub*,int ,int ,int*) ;
 scalar_t__ xfs_ag_block_count (struct xfs_mount*,int ) ;
 int xfs_agino_range (struct xfs_mount*,int ,int*,int*) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 scalar_t__ xfs_sb_version_hasfinobt (int *) ;
 int xfs_verify_agbno (struct xfs_mount*,int ,scalar_t__) ;
 int xfs_verify_agino_or_null (struct xfs_mount*,int ,int) ;

int
xchk_agi(
 struct xfs_scrub *sc)
{
 struct xfs_mount *mp = sc->mp;
 struct xfs_agi *agi;
 struct xfs_perag *pag;
 xfs_agnumber_t agno;
 xfs_agblock_t agbno;
 xfs_agblock_t eoag;
 xfs_agino_t agino;
 xfs_agino_t first_agino;
 xfs_agino_t last_agino;
 xfs_agino_t icount;
 int i;
 int level;
 int error = 0;

 agno = sc->sa.agno = sc->sm->sm_agno;
 error = xchk_ag_read_headers(sc, agno, &sc->sa.agi_bp,
   &sc->sa.agf_bp, &sc->sa.agfl_bp);
 if (!xchk_process_error(sc, agno, XFS_AGI_BLOCK(sc->mp), &error))
  goto out;
 xchk_buffer_recheck(sc, sc->sa.agi_bp);

 agi = XFS_BUF_TO_AGI(sc->sa.agi_bp);


 eoag = be32_to_cpu(agi->agi_length);
 if (eoag != xfs_ag_block_count(mp, agno))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);


 agbno = be32_to_cpu(agi->agi_root);
 if (!xfs_verify_agbno(mp, agno, agbno))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);

 level = be32_to_cpu(agi->agi_level);
 if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);

 if (xfs_sb_version_hasfinobt(&mp->m_sb)) {
  agbno = be32_to_cpu(agi->agi_free_root);
  if (!xfs_verify_agbno(mp, agno, agbno))
   xchk_block_set_corrupt(sc, sc->sa.agi_bp);

  level = be32_to_cpu(agi->agi_free_level);
  if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
   xchk_block_set_corrupt(sc, sc->sa.agi_bp);
 }


 xfs_agino_range(mp, agno, &first_agino, &last_agino);
 icount = be32_to_cpu(agi->agi_count);
 if (icount > last_agino - first_agino + 1 ||
     icount < be32_to_cpu(agi->agi_freecount))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);


 agino = be32_to_cpu(agi->agi_newino);
 if (!xfs_verify_agino_or_null(mp, agno, agino))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);

 agino = be32_to_cpu(agi->agi_dirino);
 if (!xfs_verify_agino_or_null(mp, agno, agino))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);


 for (i = 0; i < XFS_AGI_UNLINKED_BUCKETS; i++) {
  agino = be32_to_cpu(agi->agi_unlinked[i]);
  if (!xfs_verify_agino_or_null(mp, agno, agino))
   xchk_block_set_corrupt(sc, sc->sa.agi_bp);
 }

 if (agi->agi_pad32 != cpu_to_be32(0))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);


 pag = xfs_perag_get(mp, agno);
 if (pag->pagi_count != be32_to_cpu(agi->agi_count))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);
 if (pag->pagi_freecount != be32_to_cpu(agi->agi_freecount))
  xchk_block_set_corrupt(sc, sc->sa.agi_bp);
 xfs_perag_put(pag);

 xchk_agi_xref(sc);
out:
 return error;
}
