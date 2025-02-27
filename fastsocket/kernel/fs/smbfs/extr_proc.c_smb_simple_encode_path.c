
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* mnt; } ;
struct smb_request {int rq_bufsize; scalar_t__ rq_buffer; struct smb_sb_info* rq_server; } ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ENAMETOOLONG ;
 int SMB_MOUNT_UNICODE ;
 int smb_encode_path (struct smb_sb_info*,char*,int,struct dentry*,struct qstr*) ;

__attribute__((used)) static int smb_simple_encode_path(struct smb_request *req, char **p,
      struct dentry * entry, struct qstr * name)
{
 struct smb_sb_info *server = req->rq_server;
 char *s = *p;
 int res;
 int maxlen = ((char *)req->rq_buffer + req->rq_bufsize) - s;
 int unicode = (server->mnt->flags & SMB_MOUNT_UNICODE);

 if (!maxlen)
  return -ENAMETOOLONG;
 *s++ = 4;





 if (unicode) {
  int align = s - (char *)req->rq_buffer;
  if (!(align & 1)) {
   *s++ = '\0';
   maxlen--;
  }
 }

 res = smb_encode_path(server, s, maxlen-1, entry, name);
 if (res < 0)
  return res;
 *p = s + res;
 return 0;
}
