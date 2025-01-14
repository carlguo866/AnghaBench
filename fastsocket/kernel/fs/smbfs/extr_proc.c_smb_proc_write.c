
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct smb_sb_info {int dummy; } ;
struct smb_request {int* rq_header; int rq_iovlen; int rq_flags; TYPE_1__* rq_iov; } ;
struct inode {int i_ino; } ;
typedef int loff_t ;
struct TYPE_4__ {int fileid; } ;
struct TYPE_3__ {int* iov_base; int iov_len; } ;


 int DSET (int*,int ,int ) ;
 int ENOMEM ;
 TYPE_2__* SMB_I (struct inode*) ;
 int SMB_REQ_NORETRY ;
 int SMBwrite ;
 int VERBOSE (char*,int ,int,int,int ) ;
 int WSET (int*,int,int) ;
 int WVAL (int*,int) ;
 struct smb_sb_info* server_from_inode (struct inode*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_header (struct smb_request*,int ,int,int) ;
 int smb_vwv0 ;
 int smb_vwv1 ;
 int smb_vwv2 ;
 int smb_vwv4 ;

__attribute__((used)) static int
smb_proc_write(struct inode *inode, loff_t offset, int count, const char *data)
{
 struct smb_sb_info *server = server_from_inode(inode);
 int result;
 u16 fileid = SMB_I(inode)->fileid;
 u8 buf[4];
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, 0)))
  goto out;

 VERBOSE("ino=%ld, fileid=%d, count=%d@%Ld\n",
  inode->i_ino, fileid, count, offset);

 smb_setup_header(req, SMBwrite, 5, count + 3);
 WSET(req->rq_header, smb_vwv0, fileid);
 WSET(req->rq_header, smb_vwv1, count);
 DSET(req->rq_header, smb_vwv2, offset);
 WSET(req->rq_header, smb_vwv4, 0);

 buf[0] = 1;
 WSET(buf, 1, count);
 req->rq_iov[1].iov_base = buf;
 req->rq_iov[1].iov_len = 3;
 req->rq_iov[2].iov_base = (char *) data;
 req->rq_iov[2].iov_len = count;
 req->rq_iovlen = 3;
 req->rq_flags |= SMB_REQ_NORETRY;

 result = smb_request_ok(req, SMBwrite, 1, 0);
 if (result >= 0)
  result = WVAL(req->rq_header, smb_vwv0);

 smb_rput(req);
out:
 return result;
}
