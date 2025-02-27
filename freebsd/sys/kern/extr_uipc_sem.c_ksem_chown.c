
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {int dummy; } ;
struct ksem {scalar_t__ ks_uid; scalar_t__ ks_gid; } ;
struct file {struct ksem* f_data; } ;
typedef scalar_t__ gid_t ;


 int PRIV_VFS_CHOWN ;
 int groupmember (scalar_t__,struct ucred*) ;
 int mac_posixsem_check_setowner (struct ucred*,struct ksem*,scalar_t__,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int priv_check_cred (struct ucred*,int ) ;
 int sem_lock ;

__attribute__((used)) static int
ksem_chown(struct file *fp, uid_t uid, gid_t gid, struct ucred *active_cred,
    struct thread *td)
{
 struct ksem *ks;
 int error;

 error = 0;
 ks = fp->f_data;
 mtx_lock(&sem_lock);





 if (uid == (uid_t)-1)
  uid = ks->ks_uid;
 if (gid == (gid_t)-1)
                 gid = ks->ks_gid;
 if (((uid != ks->ks_uid && uid != active_cred->cr_uid) ||
     (gid != ks->ks_gid && !groupmember(gid, active_cred))) &&
     (error = priv_check_cred(active_cred, PRIV_VFS_CHOWN)))
  goto out;
 ks->ks_uid = uid;
 ks->ks_gid = gid;
out:
 mtx_unlock(&sem_lock);
 return (error);
}
