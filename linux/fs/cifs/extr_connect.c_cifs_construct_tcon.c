
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb_vol {int no_linux_ext; int password; struct smb_vol* username; int sign; int sectype; int local_lease; int nohandlecache; int nocase; int retry; int UNC; void* cred_uid; void* linux_uid; int local_nls; } ;
struct cifs_tcon {scalar_t__ posix_extensions; TYPE_1__* ses; int unix_ext; int local_lease; int nohandlecache; int nocase; int retry; int treeName; } ;
struct cifs_ses {scalar_t__ posix_extensions; TYPE_1__* ses; int unix_ext; int local_lease; int nohandlecache; int nocase; int retry; int treeName; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
typedef void* kuid_t ;
struct TYPE_5__ {int srv_count; } ;
struct TYPE_4__ {TYPE_2__* server; int sign; int sectype; } ;


 int CIFS_MOUNT_POSIX_PATHS ;
 int ENOMEM ;
 struct cifs_tcon* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct cifs_tcon*) ;
 scalar_t__ cap_unix (struct cifs_tcon*) ;
 struct cifs_tcon* cifs_get_smb_ses (TYPE_2__*,struct smb_vol*) ;
 struct cifs_tcon* cifs_get_tcon (struct cifs_tcon*,struct smb_vol*) ;
 int cifs_put_smb_ses (struct cifs_tcon*) ;
 int cifs_put_tcp_session (TYPE_2__*,int ) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cifs_set_vol_auth (struct smb_vol*,TYPE_1__*) ;
 int cifs_tcp_ses_lock ;
 int kfree (struct smb_vol*) ;
 struct smb_vol* kzalloc (int,int ) ;
 int kzfree (int ) ;
 int reset_cifs_unix_caps (int ,struct cifs_tcon*,int *,struct smb_vol*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct cifs_tcon *
cifs_construct_tcon(struct cifs_sb_info *cifs_sb, kuid_t fsuid)
{
 int rc;
 struct cifs_tcon *master_tcon = cifs_sb_master_tcon(cifs_sb);
 struct cifs_ses *ses;
 struct cifs_tcon *tcon = ((void*)0);
 struct smb_vol *vol_info;

 vol_info = kzalloc(sizeof(*vol_info), GFP_KERNEL);
 if (vol_info == ((void*)0))
  return ERR_PTR(-ENOMEM);

 vol_info->local_nls = cifs_sb->local_nls;
 vol_info->linux_uid = fsuid;
 vol_info->cred_uid = fsuid;
 vol_info->UNC = master_tcon->treeName;
 vol_info->retry = master_tcon->retry;
 vol_info->nocase = master_tcon->nocase;
 vol_info->nohandlecache = master_tcon->nohandlecache;
 vol_info->local_lease = master_tcon->local_lease;
 vol_info->no_linux_ext = !master_tcon->unix_ext;
 vol_info->sectype = master_tcon->ses->sectype;
 vol_info->sign = master_tcon->ses->sign;

 rc = cifs_set_vol_auth(vol_info, master_tcon->ses);
 if (rc) {
  tcon = ERR_PTR(rc);
  goto out;
 }


 spin_lock(&cifs_tcp_ses_lock);
 ++master_tcon->ses->server->srv_count;
 spin_unlock(&cifs_tcp_ses_lock);

 ses = cifs_get_smb_ses(master_tcon->ses->server, vol_info);
 if (IS_ERR(ses)) {
  tcon = (struct cifs_tcon *)ses;
  cifs_put_tcp_session(master_tcon->ses->server, 0);
  goto out;
 }

 tcon = cifs_get_tcon(ses, vol_info);
 if (IS_ERR(tcon)) {
  cifs_put_smb_ses(ses);
  goto out;
 }


 if (tcon->posix_extensions)
  cifs_sb->mnt_cifs_flags |= CIFS_MOUNT_POSIX_PATHS;

 if (cap_unix(ses))
  reset_cifs_unix_caps(0, tcon, ((void*)0), vol_info);

out:
 kfree(vol_info->username);
 kzfree(vol_info->password);
 kfree(vol_info);

 return tcon;
}
