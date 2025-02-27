
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_state_machine {int started; void* AuthenticationRequest; void* Init; int addr; void* ReAuthenticationRequest; int key_replay; void* Pair; void* wpa_ptk_state; scalar_t__ fils_completed; scalar_t__ ft_completed; } ;
struct TYPE_2__ {int wpa; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;


 void* FALSE ;
 int LOGGER_DEBUG ;
 void* TRUE ;
 void* WPA_PTK_PTKINITDONE ;
 int os_memset (int *,int ,int) ;
 int wpa_auth_logger (struct wpa_authenticator*,int ,int ,char*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

int wpa_auth_sta_associated(struct wpa_authenticator *wpa_auth,
       struct wpa_state_machine *sm)
{
 if (wpa_auth == ((void*)0) || !wpa_auth->conf.wpa || sm == ((void*)0))
  return -1;
 if (sm->started) {
  os_memset(&sm->key_replay, 0, sizeof(sm->key_replay));
  sm->ReAuthenticationRequest = TRUE;
  return wpa_sm_step(sm);
 }

 wpa_auth_logger(wpa_auth, sm->addr, LOGGER_DEBUG,
   "start authentication");
 sm->started = 1;

 sm->Init = TRUE;
 if (wpa_sm_step(sm) == 1)
  return 1;
 sm->Init = FALSE;
 sm->AuthenticationRequest = TRUE;
 return wpa_sm_step(sm);
}
