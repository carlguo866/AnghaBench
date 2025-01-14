
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {int Capability; } ;
struct cifs_tcon {TYPE_1__ fsUnixInfo; TYPE_3__* ses; scalar_t__ posix_extensions; } ;
struct cifs_sb_info {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_8__ {scalar_t__ time; } ;
struct TYPE_7__ {struct TCP_Server_Info* server; } ;
struct TYPE_6__ {int (* posix_mkdir ) (unsigned int,struct inode*,int ,struct cifs_tcon*,char*,struct cifs_sb_info*) ;int (* mkdir ) (unsigned int,struct inode*,int ,struct cifs_tcon*,char*,struct cifs_sb_info*) ;} ;


 TYPE_4__* CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ;
 int ENOMEM ;
 int ENOSYS ;
 int EOPNOTSUPP ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 scalar_t__ cap_unix (TYPE_3__*) ;
 int cifs_dbg (int ,char*,int,...) ;
 int cifs_mkdir_qinfo (struct inode*,struct dentry*,int ,char*,struct cifs_sb_info*,struct cifs_tcon*,unsigned int) ;
 int cifs_posix_mkdir (struct inode*,struct dentry*,int ,char*,struct cifs_sb_info*,struct cifs_tcon*,unsigned int) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int d_drop (struct dentry*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int kfree (char*) ;
 int le64_to_cpu (int ) ;
 int stub1 (unsigned int,struct inode*,int ,struct cifs_tcon*,char*,struct cifs_sb_info*) ;
 int stub2 (unsigned int,struct inode*,int ,struct cifs_tcon*,char*,struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_mkdir(struct inode *inode, struct dentry *direntry, umode_t mode)
{
 int rc = 0;
 unsigned int xid;
 struct cifs_sb_info *cifs_sb;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 char *full_path;

 cifs_dbg(FYI, "In cifs_mkdir, mode = 0x%hx inode = 0x%p\n",
   mode, inode);

 cifs_sb = CIFS_SB(inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 tcon = tlink_tcon(tlink);

 xid = get_xid();

 full_path = build_path_from_dentry(direntry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto mkdir_out;
 }

 server = tcon->ses->server;

 if ((server->ops->posix_mkdir) && (tcon->posix_extensions)) {
  rc = server->ops->posix_mkdir(xid, inode, mode, tcon, full_path,
           cifs_sb);
  d_drop(direntry);
  goto mkdir_out;
 }

 if (cap_unix(tcon->ses) && (CIFS_UNIX_POSIX_PATH_OPS_CAP &
    le64_to_cpu(tcon->fsUnixInfo.Capability))) {
  rc = cifs_posix_mkdir(inode, direntry, mode, full_path, cifs_sb,
          tcon, xid);
  if (rc != -EOPNOTSUPP)
   goto mkdir_out;
 }

 if (!server->ops->mkdir) {
  rc = -ENOSYS;
  goto mkdir_out;
 }


 rc = server->ops->mkdir(xid, inode, mode, tcon, full_path, cifs_sb);
 if (rc) {
  cifs_dbg(FYI, "cifs_mkdir returned 0x%x\n", rc);
  d_drop(direntry);
  goto mkdir_out;
 }


 rc = cifs_mkdir_qinfo(inode, direntry, mode, full_path, cifs_sb, tcon,
         xid);
mkdir_out:




 CIFS_I(inode)->time = 0;
 kfree(full_path);
 free_xid(xid);
 cifs_put_tlink(tlink);
 return rc;
}
