
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {struct wps_pbc_session* pbc_sessions; } ;
struct os_time {scalar_t__ sec; } ;
struct wps_pbc_session {struct wps_pbc_session* next; struct os_time timestamp; int uuid_e; int addr; } ;


 int ETH_ALEN ;
 scalar_t__ WPS_PBC_WALK_TIME ;
 int WPS_UUID_LEN ;
 int os_get_time (struct os_time*) ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 scalar_t__ os_zalloc (int) ;
 int wps_free_pbc_sessions (struct wps_pbc_session*) ;

__attribute__((used)) static void wps_registrar_add_pbc_session(struct wps_registrar *reg,
       const u8 *addr, const u8 *uuid_e)
{
 struct wps_pbc_session *pbc, *prev = ((void*)0);
 struct os_time now;

 os_get_time(&now);

 pbc = reg->pbc_sessions;
 while (pbc) {
  if (os_memcmp(pbc->addr, addr, ETH_ALEN) == 0 &&
      os_memcmp(pbc->uuid_e, uuid_e, WPS_UUID_LEN) == 0) {
   if (prev)
    prev->next = pbc->next;
   else
    reg->pbc_sessions = pbc->next;
   break;
  }
  prev = pbc;
  pbc = pbc->next;
 }

 if (!pbc) {
  pbc = (struct wps_pbc_session *)os_zalloc(sizeof(*pbc));
  if (pbc == ((void*)0))
   return;
  os_memcpy(pbc->addr, addr, ETH_ALEN);
  if (uuid_e)
   os_memcpy(pbc->uuid_e, uuid_e, WPS_UUID_LEN);
 }

 pbc->next = reg->pbc_sessions;
 reg->pbc_sessions = pbc;
 pbc->timestamp = now;


 prev = pbc;
 pbc = pbc->next;

 while (pbc) {
  if (now.sec > pbc->timestamp.sec + WPS_PBC_WALK_TIME) {
   prev->next = ((void*)0);
   wps_free_pbc_sessions(pbc);
   break;
  }
  prev = pbc;
  pbc = pbc->next;
 }
}
