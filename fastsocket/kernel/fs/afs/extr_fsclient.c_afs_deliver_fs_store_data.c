
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct afs_vnode {int status; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ reply_max; int store_version; int * buffer; struct afs_vnode* reply; } ;
typedef int __be32 ;


 int EBADMSG ;
 int _enter (char*,int) ;
 int _leave (char*,...) ;
 int afs_pages_written_back (struct afs_vnode*,struct afs_call*) ;
 int afs_transfer_reply (struct afs_call*,struct sk_buff*) ;
 int xdr_decode_AFSFetchStatus (int const**,int *,struct afs_vnode*,int *) ;

__attribute__((used)) static int afs_deliver_fs_store_data(struct afs_call *call,
         struct sk_buff *skb, bool last)
{
 struct afs_vnode *vnode = call->reply;
 const __be32 *bp;

 _enter(",,%u", last);

 afs_transfer_reply(call, skb);
 if (!last) {
  _leave(" = 0 [more]");
  return 0;
 }

 if (call->reply_size != call->reply_max) {
  _leave(" = -EBADMSG [%u != %u]",
         call->reply_size, call->reply_max);
  return -EBADMSG;
 }


 bp = call->buffer;
 xdr_decode_AFSFetchStatus(&bp, &vnode->status, vnode,
      &call->store_version);


 afs_pages_written_back(vnode, call);

 _leave(" = 0 [done]");
 return 0;
}
