
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rfcomm_session {scalar_t__ state; } ;
struct rfcomm_dlc {scalar_t__ state; } ;


 void* BT_CLOSED ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECT ;
 int BT_DBG (char*,struct rfcomm_session*,scalar_t__,scalar_t__) ;
 int ECONNREFUSED ;
 int ECONNRESET ;
 int __rfcomm_dlc_close (struct rfcomm_dlc*,int) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_session_close (struct rfcomm_session*,int) ;

__attribute__((used)) static int rfcomm_recv_dm(struct rfcomm_session *s, u8 dlci)
{
 int err = 0;

 BT_DBG("session %p state %ld dlci %d", s, s->state, dlci);

 if (dlci) {

  struct rfcomm_dlc *d = rfcomm_dlc_get(s, dlci);
  if (d) {
   if (d->state == BT_CONNECT || d->state == BT_CONFIG)
    err = ECONNREFUSED;
   else
    err = ECONNRESET;

   d->state = BT_CLOSED;
   __rfcomm_dlc_close(d, err);
  }
 } else {
  if (s->state == BT_CONNECT)
   err = ECONNREFUSED;
  else
   err = ECONNRESET;

  s->state = BT_CLOSED;
  rfcomm_session_close(s, err);
 }
 return 0;
}
