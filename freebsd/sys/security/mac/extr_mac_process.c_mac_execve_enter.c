
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int m_buflen; int m_string; } ;
struct label {int dummy; } ;
struct image_params {struct label* execlabel; } ;
typedef int mac ;


 int EINVAL ;
 int MPC_OBJECT_CRED ;
 int M_MACTEMP ;
 int M_WAITOK ;
 int copyin (struct mac*,struct mac*,int) ;
 int copyinstr (int ,char*,int ,int *) ;
 int free (char*,int ) ;
 int mac_check_structmac_consistent (struct mac*) ;
 int mac_cred_internalize_label (struct label*,char*) ;
 struct label* mac_cred_label_alloc () ;
 int mac_cred_label_free (struct label*) ;
 int mac_labeled ;
 char* malloc (int ,int ,int ) ;

int
mac_execve_enter(struct image_params *imgp, struct mac *mac_p)
{
 struct label *label;
 struct mac mac;
 char *buffer;
 int error;

 if (mac_p == ((void*)0))
  return (0);

 if (!(mac_labeled & MPC_OBJECT_CRED))
  return (EINVAL);

 error = copyin(mac_p, &mac, sizeof(mac));
 if (error)
  return (error);

 error = mac_check_structmac_consistent(&mac);
 if (error)
  return (error);

 buffer = malloc(mac.m_buflen, M_MACTEMP, M_WAITOK);
 error = copyinstr(mac.m_string, buffer, mac.m_buflen, ((void*)0));
 if (error) {
  free(buffer, M_MACTEMP);
  return (error);
 }

 label = mac_cred_label_alloc();
 error = mac_cred_internalize_label(label, buffer);
 free(buffer, M_MACTEMP);
 if (error) {
  mac_cred_label_free(label);
  return (error);
 }
 imgp->execlabel = label;
 return (0);
}
