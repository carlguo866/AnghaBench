
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_cred {int id; struct wpa_cred* next; int sim_num; } ;
struct wpa_config {struct wpa_cred* cred; } ;


 int DEFAULT_USER_SELECTED_SIM ;
 struct wpa_cred* os_zalloc (int) ;

struct wpa_cred * wpa_config_add_cred(struct wpa_config *config)
{
 int id;
 struct wpa_cred *cred, *last = ((void*)0);

 id = -1;
 cred = config->cred;
 while (cred) {
  if (cred->id > id)
   id = cred->id;
  last = cred;
  cred = cred->next;
 }
 id++;

 cred = os_zalloc(sizeof(*cred));
 if (cred == ((void*)0))
  return ((void*)0);
 cred->id = id;
 cred->sim_num = DEFAULT_USER_SELECTED_SIM;
 if (last)
  last->next = cred;
 else
  config->cred = cred;

 return cred;
}
