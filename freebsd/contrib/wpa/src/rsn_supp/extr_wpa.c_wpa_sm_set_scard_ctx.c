
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {scalar_t__ preauth_eapol; void* scard_ctx; } ;


 int eapol_sm_register_scard_ctx (scalar_t__,void*) ;

void wpa_sm_set_scard_ctx(struct wpa_sm *sm, void *scard_ctx)
{
 if (sm == ((void*)0))
  return;
 sm->scard_ctx = scard_ctx;
 if (sm->preauth_eapol)
  eapol_sm_register_scard_ctx(sm->preauth_eapol, scard_ctx);
}
