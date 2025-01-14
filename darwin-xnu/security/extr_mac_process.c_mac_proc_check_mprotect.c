
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_size_t ;
typedef int user_addr_t ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int ,int ,int ,int) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_enforce (int ) ;
 int mac_vm_enforce ;
 int proc_check_mprotect ;

int
mac_proc_check_mprotect(proc_t proc,
    user_addr_t addr, user_size_t size, int prot)
{
 kauth_cred_t cred;
 int error;






 if (!mac_proc_check_enforce(proc))
  return (0);

 cred = kauth_cred_proc_ref(proc);
 MAC_CHECK(proc_check_mprotect, cred, proc, addr, size, prot);
 kauth_cred_unref(&cred);

 return (error);
}
