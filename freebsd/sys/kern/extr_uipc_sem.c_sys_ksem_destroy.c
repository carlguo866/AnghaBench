
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksem_destroy_args {int id; } ;
struct ksem {int ks_flags; scalar_t__ ks_waiters; } ;
struct file {struct ksem* f_data; } ;


 int AUDIT_ARG_FD (int ) ;
 int EBUSY ;
 int EINVAL ;
 int KS_ANONYMOUS ;
 int KS_DEAD ;
 int cap_no_rights ;
 int fdrop (struct file*,struct thread*) ;
 int kern_close (struct thread*,int ) ;
 int ksem_get (struct thread*,int ,int *,struct file**) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;

int
sys_ksem_destroy(struct thread *td, struct ksem_destroy_args *uap)
{
 struct file *fp;
 struct ksem *ks;
 int error;


 AUDIT_ARG_FD(uap->id);
 error = ksem_get(td, uap->id, &cap_no_rights, &fp);
 if (error)
  return (error);
 ks = fp->f_data;
 if (!(ks->ks_flags & KS_ANONYMOUS)) {
  fdrop(fp, td);
  return (EINVAL);
 }
 mtx_lock(&sem_lock);
 if (ks->ks_waiters != 0) {
  mtx_unlock(&sem_lock);
  error = EBUSY;
  goto err;
 }
 ks->ks_flags |= KS_DEAD;
 mtx_unlock(&sem_lock);

 error = kern_close(td, uap->id);
err:
 fdrop(fp, td);
 return (error);
}
