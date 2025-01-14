
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
typedef scalar_t__ xfs_agblock_t ;
typedef int targs ;
struct xfs_trans {int t_flags; } ;
struct xfs_perag {scalar_t__ pagf_flcount; scalar_t__ pagf_agflreset; scalar_t__ pagf_metadata; int pagf_init; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_alloc_arg {int alignment; int minlen; int prod; scalar_t__ agbno; scalar_t__ len; struct xfs_buf* agbp; int resv; scalar_t__ maxlen; int agno; struct xfs_perag* pag; int type; struct xfs_mount* mp; struct xfs_trans* tp; int oinfo; int datatype; } ;


 int ASSERT (int) ;
 scalar_t__ NULLAGBLOCK ;
 int XFS_AG_RESV_AGFL ;
 int XFS_ALLOCTYPE_THIS_AG ;
 int XFS_ALLOC_FLAG_CHECK ;
 int XFS_ALLOC_FLAG_FREEING ;
 int XFS_ALLOC_FLAG_NORMAP ;
 int XFS_ALLOC_FLAG_NOSHRINK ;
 int XFS_ALLOC_FLAG_TRYLOCK ;
 int XFS_RMAP_OINFO_AG ;
 int XFS_RMAP_OINFO_SKIP_UPDATE ;
 int XFS_TRANS_PERM_LOG_RES ;
 int memset (struct xfs_alloc_arg*,int ,int) ;
 int xfs_agfl_reset (struct xfs_trans*,struct xfs_buf*,struct xfs_perag*) ;
 int xfs_alloc_ag_vextent (struct xfs_alloc_arg*) ;
 int xfs_alloc_get_freelist (struct xfs_trans*,struct xfs_buf*,scalar_t__*,int ) ;
 scalar_t__ xfs_alloc_is_userdata (int ) ;
 scalar_t__ xfs_alloc_min_freelist (struct xfs_mount*,struct xfs_perag*) ;
 int xfs_alloc_put_freelist (struct xfs_trans*,struct xfs_buf*,struct xfs_buf*,scalar_t__,int ) ;
 int xfs_alloc_read_agf (struct xfs_mount*,struct xfs_trans*,int ,int,struct xfs_buf**) ;
 int xfs_alloc_read_agfl (struct xfs_mount*,struct xfs_trans*,int ,struct xfs_buf**) ;
 int xfs_alloc_space_available (struct xfs_alloc_arg*,scalar_t__,int) ;
 int xfs_defer_agfl_block (struct xfs_trans*,int ,scalar_t__,int *) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_alloc_fix_freelist(
 struct xfs_alloc_arg *args,
 int flags)
{
 struct xfs_mount *mp = args->mp;
 struct xfs_perag *pag = args->pag;
 struct xfs_trans *tp = args->tp;
 struct xfs_buf *agbp = ((void*)0);
 struct xfs_buf *agflbp = ((void*)0);
 struct xfs_alloc_arg targs;
 xfs_agblock_t bno;
 xfs_extlen_t need;
 int error = 0;


 ASSERT(tp->t_flags & XFS_TRANS_PERM_LOG_RES);

 if (!pag->pagf_init) {
  error = xfs_alloc_read_agf(mp, tp, args->agno, flags, &agbp);
  if (error)
   goto out_no_agbp;
  if (!pag->pagf_init) {
   ASSERT(flags & XFS_ALLOC_FLAG_TRYLOCK);
   ASSERT(!(flags & XFS_ALLOC_FLAG_FREEING));
   goto out_agbp_relse;
  }
 }






 if (pag->pagf_metadata && xfs_alloc_is_userdata(args->datatype) &&
     (flags & XFS_ALLOC_FLAG_TRYLOCK)) {
  ASSERT(!(flags & XFS_ALLOC_FLAG_FREEING));
  goto out_agbp_relse;
 }

 need = xfs_alloc_min_freelist(mp, pag);
 if (!xfs_alloc_space_available(args, need, flags |
   XFS_ALLOC_FLAG_CHECK))
  goto out_agbp_relse;





 if (!agbp) {
  error = xfs_alloc_read_agf(mp, tp, args->agno, flags, &agbp);
  if (error)
   goto out_no_agbp;
  if (!agbp) {
   ASSERT(flags & XFS_ALLOC_FLAG_TRYLOCK);
   ASSERT(!(flags & XFS_ALLOC_FLAG_FREEING));
   goto out_no_agbp;
  }
 }


 if (pag->pagf_agflreset)
  xfs_agfl_reset(tp, agbp, pag);


 need = xfs_alloc_min_freelist(mp, pag);
 if (!xfs_alloc_space_available(args, need, flags))
  goto out_agbp_relse;
 memset(&targs, 0, sizeof(targs));

 if (flags & XFS_ALLOC_FLAG_NORMAP)
  targs.oinfo = XFS_RMAP_OINFO_SKIP_UPDATE;
 else
  targs.oinfo = XFS_RMAP_OINFO_AG;
 while (!(flags & XFS_ALLOC_FLAG_NOSHRINK) && pag->pagf_flcount > need) {
  error = xfs_alloc_get_freelist(tp, agbp, &bno, 0);
  if (error)
   goto out_agbp_relse;


  xfs_defer_agfl_block(tp, args->agno, bno, &targs.oinfo);
 }

 targs.tp = tp;
 targs.mp = mp;
 targs.agbp = agbp;
 targs.agno = args->agno;
 targs.alignment = targs.minlen = targs.prod = 1;
 targs.type = XFS_ALLOCTYPE_THIS_AG;
 targs.pag = pag;
 error = xfs_alloc_read_agfl(mp, tp, targs.agno, &agflbp);
 if (error)
  goto out_agbp_relse;


 while (pag->pagf_flcount < need) {
  targs.agbno = 0;
  targs.maxlen = need - pag->pagf_flcount;
  targs.resv = XFS_AG_RESV_AGFL;


  error = xfs_alloc_ag_vextent(&targs);
  if (error)
   goto out_agflbp_relse;






  if (targs.agbno == NULLAGBLOCK) {
   if (flags & XFS_ALLOC_FLAG_FREEING)
    break;
   goto out_agflbp_relse;
  }



  for (bno = targs.agbno; bno < targs.agbno + targs.len; bno++) {
   error = xfs_alloc_put_freelist(tp, agbp,
       agflbp, bno, 0);
   if (error)
    goto out_agflbp_relse;
  }
 }
 xfs_trans_brelse(tp, agflbp);
 args->agbp = agbp;
 return 0;

out_agflbp_relse:
 xfs_trans_brelse(tp, agflbp);
out_agbp_relse:
 if (agbp)
  xfs_trans_brelse(tp, agbp);
out_no_agbp:
 args->agbp = ((void*)0);
 return error;
}
