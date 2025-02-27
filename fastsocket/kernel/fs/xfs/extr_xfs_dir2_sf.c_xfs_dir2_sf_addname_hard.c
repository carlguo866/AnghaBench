
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {int di_size; } ;
struct TYPE_23__ {scalar_t__ if_data; } ;
struct TYPE_24__ {TYPE_1__ if_u1; } ;
struct TYPE_27__ {TYPE_4__ i_d; TYPE_2__ i_df; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_25__ {int i8count; int count; } ;
struct TYPE_28__ {int namelen; TYPE_3__ hdr; struct TYPE_28__* name; } ;
typedef TYPE_6__ xfs_dir2_sf_t ;
typedef TYPE_6__ xfs_dir2_sf_entry_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;
struct TYPE_29__ {int namelen; scalar_t__ inumber; TYPE_6__* name; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;


 int KM_SLEEP ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_DATA_FIRST_OFFSET ;
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*) ;
 int memcpy (TYPE_6__*,TYPE_6__*,int) ;
 int xfs_dir2_data_entsize (int) ;
 int xfs_dir2_sf_check (TYPE_8__*) ;
 TYPE_6__* xfs_dir2_sf_firstentry (TYPE_6__*) ;
 scalar_t__ xfs_dir2_sf_get_offset (TYPE_6__*) ;
 int xfs_dir2_sf_inumberp (TYPE_6__*) ;
 TYPE_6__* xfs_dir2_sf_nextentry (TYPE_6__*,TYPE_6__*) ;
 int xfs_dir2_sf_put_inumber (TYPE_6__*,scalar_t__*,int ) ;
 int xfs_dir2_sf_put_offset (TYPE_6__*,scalar_t__) ;
 int xfs_idata_realloc (TYPE_5__*,int,int ) ;

__attribute__((used)) static void
xfs_dir2_sf_addname_hard(
 xfs_da_args_t *args,
 int objchange,
 int new_isize)
{
 int add_datasize;
 char *buf;
 xfs_inode_t *dp;
 int eof;
 int nbytes;
 xfs_dir2_data_aoff_t new_offset;
 xfs_dir2_data_aoff_t offset;
 int old_isize;
 xfs_dir2_sf_entry_t *oldsfep;
 xfs_dir2_sf_t *oldsfp;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_t *sfp;




 dp = args->dp;

 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 old_isize = (int)dp->i_d.di_size;
 buf = kmem_alloc(old_isize, KM_SLEEP);
 oldsfp = (xfs_dir2_sf_t *)buf;
 memcpy(oldsfp, sfp, old_isize);





 for (offset = XFS_DIR2_DATA_FIRST_OFFSET,
       oldsfep = xfs_dir2_sf_firstentry(oldsfp),
       add_datasize = xfs_dir2_data_entsize(args->namelen),
       eof = (char *)oldsfep == &buf[old_isize];
      !eof;
      offset = new_offset + xfs_dir2_data_entsize(oldsfep->namelen),
       oldsfep = xfs_dir2_sf_nextentry(oldsfp, oldsfep),
       eof = (char *)oldsfep == &buf[old_isize]) {
  new_offset = xfs_dir2_sf_get_offset(oldsfep);
  if (offset + add_datasize <= new_offset)
   break;
 }





 xfs_idata_realloc(dp, -old_isize, XFS_DATA_FORK);
 xfs_idata_realloc(dp, new_isize, XFS_DATA_FORK);



 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;



 nbytes = (int)((char *)oldsfep - (char *)oldsfp);
 memcpy(sfp, oldsfp, nbytes);
 sfep = (xfs_dir2_sf_entry_t *)((char *)sfp + nbytes);



 sfep->namelen = args->namelen;
 xfs_dir2_sf_put_offset(sfep, offset);
 memcpy(sfep->name, args->name, sfep->namelen);
 xfs_dir2_sf_put_inumber(sfp, &args->inumber,
  xfs_dir2_sf_inumberp(sfep));
 sfp->hdr.count++;







 if (!eof) {
  sfep = xfs_dir2_sf_nextentry(sfp, sfep);
  memcpy(sfep, oldsfep, old_isize - nbytes);
 }
 kmem_free(buf);
 dp->i_d.di_size = new_isize;
 xfs_dir2_sf_check(args);
}
