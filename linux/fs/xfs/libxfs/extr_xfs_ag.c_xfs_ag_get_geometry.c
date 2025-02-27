
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_agnumber_t ;
struct xfs_perag {unsigned int pagf_freeblks; unsigned int pagf_flcount; unsigned int pagf_btreeblks; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agi {int agi_freecount; int agi_count; } ;
struct xfs_agf {int agf_length; } ;
struct xfs_ag_geometry {unsigned int ag_freeblks; void* ag_length; void* ag_ifree; void* ag_icount; scalar_t__ ag_number; } ;


 int EINVAL ;
 int XFS_AG_RESV_NONE ;
 struct xfs_agf* XFS_BUF_TO_AGF (struct xfs_buf*) ;
 struct xfs_agi* XFS_BUF_TO_AGI (struct xfs_buf*) ;
 void* be32_to_cpu (int ) ;
 int memset (struct xfs_ag_geometry*,int ,int) ;
 int xfs_ag_geom_health (struct xfs_perag*,struct xfs_ag_geometry*) ;
 unsigned int xfs_ag_resv_needed (struct xfs_perag*,int ) ;
 int xfs_alloc_read_agf (struct xfs_mount*,int *,scalar_t__,int ,struct xfs_buf**) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_ialloc_read_agi (struct xfs_mount*,int *,scalar_t__,struct xfs_buf**) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;

int
xfs_ag_get_geometry(
 struct xfs_mount *mp,
 xfs_agnumber_t agno,
 struct xfs_ag_geometry *ageo)
{
 struct xfs_buf *agi_bp;
 struct xfs_buf *agf_bp;
 struct xfs_agi *agi;
 struct xfs_agf *agf;
 struct xfs_perag *pag;
 unsigned int freeblks;
 int error;

 if (agno >= mp->m_sb.sb_agcount)
  return -EINVAL;


 error = xfs_ialloc_read_agi(mp, ((void*)0), agno, &agi_bp);
 if (error)
  return error;
 error = xfs_alloc_read_agf(mp, ((void*)0), agno, 0, &agf_bp);
 if (error)
  goto out_agi;
 pag = xfs_perag_get(mp, agno);


 memset(ageo, 0, sizeof(*ageo));
 ageo->ag_number = agno;

 agi = XFS_BUF_TO_AGI(agi_bp);
 ageo->ag_icount = be32_to_cpu(agi->agi_count);
 ageo->ag_ifree = be32_to_cpu(agi->agi_freecount);

 agf = XFS_BUF_TO_AGF(agf_bp);
 ageo->ag_length = be32_to_cpu(agf->agf_length);
 freeblks = pag->pagf_freeblks +
     pag->pagf_flcount +
     pag->pagf_btreeblks -
     xfs_ag_resv_needed(pag, XFS_AG_RESV_NONE);
 ageo->ag_freeblks = freeblks;
 xfs_ag_geom_health(pag, ageo);


 xfs_perag_put(pag);
 xfs_buf_relse(agf_bp);
out_agi:
 xfs_buf_relse(agi_bp);
 return error;
}
