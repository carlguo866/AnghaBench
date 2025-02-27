
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; TYPE_3__* cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_status_cb* out_dir_scb; int key; } ;
typedef int __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int flags; } ;


 int AFS_SERVER_FL_IS_YFS ;
 int ENOMEM ;
 size_t FSREMOVEDIR ;
 size_t FSREMOVEFILE ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSRemoveDir ;
 int afs_RXFSRemoveFile ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,size_t,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,TYPE_3__*) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (size_t) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_make_fs_call1 (struct afs_call*,TYPE_2__*,char const*) ;
 int yfs_fs_remove (struct afs_fs_cursor*,struct afs_vnode*,char const*,int,struct afs_status_cb*) ;

int afs_fs_remove(struct afs_fs_cursor *fc, struct afs_vnode *vnode,
    const char *name, bool isdir, struct afs_status_cb *dvnode_scb)
{
 struct afs_vnode *dvnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(dvnode);
 size_t namesz, reqsz, padsz;
 __be32 *bp;

 if (test_bit(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
  return yfs_fs_remove(fc, vnode, name, isdir, dvnode_scb);

 _enter("");

 namesz = strlen(name);
 padsz = (4 - (namesz & 3)) & 3;
 reqsz = (5 * 4) + namesz + padsz;

 call = afs_alloc_flat_call(
  net, isdir ? &afs_RXFSRemoveDir : &afs_RXFSRemoveFile,
  reqsz, (21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_dir_scb = dvnode_scb;


 bp = call->request;
 *bp++ = htonl(isdir ? FSREMOVEDIR : FSREMOVEFILE);
 *bp++ = htonl(dvnode->fid.vid);
 *bp++ = htonl(dvnode->fid.vnode);
 *bp++ = htonl(dvnode->fid.unique);
 *bp++ = htonl(namesz);
 memcpy(bp, name, namesz);
 bp = (void *) bp + namesz;
 if (padsz > 0) {
  memset(bp, 0, padsz);
  bp = (void *) bp + padsz;
 }

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call1(call, &dvnode->fid, name);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
