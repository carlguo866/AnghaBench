
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p9_req_t {int rc; } ;
struct p9_flock {int client_id; int proc_id; int length; int start; int flags; int type; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TLOCK ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,int *) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status)
{
 int err;
 struct p9_client *clnt;
 struct p9_req_t *req;

 err = 0;
 clnt = fid->clnt;
 p9_debug(P9_DEBUG_9P, ">>> TLOCK fid %d type %i flags %d "
   "start %lld length %lld proc_id %d client_id %s\n",
   fid->fid, flock->type, flock->flags, flock->start,
   flock->length, flock->proc_id, flock->client_id);

 req = p9_client_rpc(clnt, P9_TLOCK, "dbdqqds", fid->fid, flock->type,
    flock->flags, flock->start, flock->length,
     flock->proc_id, flock->client_id);

 if (IS_ERR(req))
  return PTR_ERR(req);

 err = p9pdu_readf(&req->rc, clnt->proto_version, "b", status);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  goto error;
 }
 p9_debug(P9_DEBUG_9P, "<<< RLOCK status %i\n", *status);
error:
 p9_tag_remove(clnt, req);
 return err;

}
