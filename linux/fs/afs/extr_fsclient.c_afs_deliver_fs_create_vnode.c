
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int out_volsync; int out_scb; int out_dir_scb; int out_fid; int * buffer; } ;
typedef int __be32 ;


 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*) ;
 int xdr_decode_AFSCallBack (int const**,struct afs_call*,int ) ;
 int xdr_decode_AFSFetchStatus (int const**,struct afs_call*,int ) ;
 int xdr_decode_AFSFid (int const**,int ) ;
 int xdr_decode_AFSVolSync (int const**,int ) ;

__attribute__((used)) static int afs_deliver_fs_create_vnode(struct afs_call *call)
{
 const __be32 *bp;
 int ret;

 ret = afs_transfer_reply(call);
 if (ret < 0)
  return ret;


 bp = call->buffer;
 xdr_decode_AFSFid(&bp, call->out_fid);
 ret = xdr_decode_AFSFetchStatus(&bp, call, call->out_scb);
 if (ret < 0)
  return ret;
 ret = xdr_decode_AFSFetchStatus(&bp, call, call->out_dir_scb);
 if (ret < 0)
  return ret;
 xdr_decode_AFSCallBack(&bp, call, call->out_scb);
 xdr_decode_AFSVolSync(&bp, call->out_volsync);

 _leave(" = 0 [done]");
 return 0;
}
