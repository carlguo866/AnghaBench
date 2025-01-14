
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct vop_cachedlookup_args {TYPE_3__* a_cnp; struct vnode* a_dvp; struct vnode** a_vpp; } ;
struct vnode {int dummy; } ;
struct udf_node {int diroff; scalar_t__ hash_id; TYPE_1__* fentry; struct udf_mnt* udfmp; } ;
struct udf_mnt {int im_mountp; } ;
struct udf_dirstream {int error; int offset; int off; } ;
struct fileid_desc {int file_char; scalar_t__ l_fi; size_t l_iu; int icb; int * data; int tag; } ;
typedef scalar_t__ ino_t ;
struct TYPE_6__ {scalar_t__ cn_nameiop; scalar_t__ cn_flags; int cn_lkflags; char* cn_nameptr; long cn_namelen; } ;
struct TYPE_5__ {int ncs_pass2; int ncs_2passes; } ;
struct TYPE_4__ {int inf_len; } ;


 scalar_t__ CREATE ;
 int EIO ;
 int ENOENT ;
 int EROFS ;
 scalar_t__ ISDOTDOT ;
 scalar_t__ ISLASTCN ;
 int LK_DOWNGRADE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_TYPE_MASK ;
 int LK_UPGRADE ;
 scalar_t__ LOOKUP ;
 scalar_t__ MAKEENTRY ;
 scalar_t__ RENAME ;
 int TAGID_FID ;
 int UDF_FILE_CHAR_DEL ;
 int UDF_FILE_CHAR_PAR ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VREF (struct vnode*) ;
 struct udf_node* VTON (struct vnode*) ;
 int cache_enter (struct vnode*,struct vnode*,TYPE_3__*) ;
 int le64toh (int ) ;
 TYPE_2__ nchstats ;
 int printf (char*) ;
 scalar_t__ udf_checktag (int *,int ) ;
 int udf_closedir (struct udf_dirstream*) ;
 int udf_cmpname (int *,char*,scalar_t__,long,struct udf_mnt*) ;
 struct fileid_desc* udf_getfid (struct udf_dirstream*) ;
 scalar_t__ udf_getid (int *) ;
 struct udf_dirstream* udf_opendir (struct udf_node*,int,int,struct udf_mnt*) ;
 int udf_vget (int ,scalar_t__,int,struct vnode**) ;
 int vn_lock (struct vnode*,int) ;
 int vn_vget_ino (struct vnode*,scalar_t__,int,struct vnode**) ;

__attribute__((used)) static int
udf_lookup(struct vop_cachedlookup_args *a)
{
 struct vnode *dvp;
 struct vnode *tdp = ((void*)0);
 struct vnode **vpp = a->a_vpp;
 struct udf_node *node;
 struct udf_mnt *udfmp;
 struct fileid_desc *fid = ((void*)0);
 struct udf_dirstream *ds;
 u_long nameiop;
 u_long flags;
 char *nameptr;
 long namelen;
 ino_t id = 0;
 int offset, error = 0;
 int fsize, lkflags, ltype, numdirpasses;

 dvp = a->a_dvp;
 node = VTON(dvp);
 udfmp = node->udfmp;
 nameiop = a->a_cnp->cn_nameiop;
 flags = a->a_cnp->cn_flags;
 lkflags = a->a_cnp->cn_lkflags;
 nameptr = a->a_cnp->cn_nameptr;
 namelen = a->a_cnp->cn_namelen;
 fsize = le64toh(node->fentry->inf_len);







 if (nameiop != LOOKUP || node->diroff == 0 || node->diroff > fsize) {
  offset = 0;
  numdirpasses = 1;
 } else {
  offset = node->diroff;
  numdirpasses = 2;
  nchstats.ncs_2passes++;
 }

lookloop:
 ds = udf_opendir(node, offset, fsize, udfmp);

 while ((fid = udf_getfid(ds)) != ((void*)0)) {


  if (udf_checktag(&fid->tag, TAGID_FID)) {
   printf("udf_lookup: Invalid tag\n");
   error = EIO;
   break;
  }


  if (fid->file_char & UDF_FILE_CHAR_DEL)
   continue;

  if ((fid->l_fi == 0) && (fid->file_char & UDF_FILE_CHAR_PAR)) {
   if (flags & ISDOTDOT) {
    id = udf_getid(&fid->icb);
    break;
   }
  } else {
   if (!(udf_cmpname(&fid->data[fid->l_iu],
       nameptr, fid->l_fi, namelen, udfmp))) {
    id = udf_getid(&fid->icb);
    break;
   }
  }
 }

 if (!error)
  error = ds->error;


 if (error) {
  udf_closedir(ds);
  return (error);
 }


 if (id) {




  if ((flags & ISLASTCN) && nameiop == LOOKUP)
   node->diroff = ds->offset + ds->off;
  if (numdirpasses == 2)
   nchstats.ncs_pass2++;
  udf_closedir(ds);

  if (flags & ISDOTDOT) {
   error = vn_vget_ino(dvp, id, lkflags, &tdp);
  } else if (node->hash_id == id) {
   VREF(dvp);




   ltype = lkflags & LK_TYPE_MASK;
   if (ltype != VOP_ISLOCKED(dvp)) {
    if (ltype == LK_EXCLUSIVE)
     vn_lock(dvp, LK_UPGRADE | LK_RETRY);
    else
     vn_lock(dvp, LK_DOWNGRADE | LK_RETRY);
   }
   tdp = dvp;
  } else
   error = udf_vget(udfmp->im_mountp, id, lkflags, &tdp);
  if (!error) {
   *vpp = tdp;

   if (flags & MAKEENTRY)
    cache_enter(dvp, *vpp, a->a_cnp);
  }
 } else {

  if (numdirpasses == 2) {
   numdirpasses--;
   offset = 0;
   udf_closedir(ds);
   goto lookloop;
  }
  udf_closedir(ds);


  if (flags & MAKEENTRY)
   cache_enter(dvp, *vpp, a->a_cnp);

  if ((flags & ISLASTCN) &&
      (nameiop == CREATE || nameiop == RENAME)) {
   error = EROFS;
  } else {
   error = ENOENT;
  }
 }

 return (error);
}
