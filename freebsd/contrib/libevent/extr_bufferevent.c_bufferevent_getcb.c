
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {void* cbarg; int errorcb; int writecb; int readcb; } ;
typedef int bufferevent_event_cb ;
typedef int bufferevent_data_cb ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;

void
bufferevent_getcb(struct bufferevent *bufev,
    bufferevent_data_cb *readcb_ptr,
    bufferevent_data_cb *writecb_ptr,
    bufferevent_event_cb *eventcb_ptr,
    void **cbarg_ptr)
{
 BEV_LOCK(bufev);
 if (readcb_ptr)
  *readcb_ptr = bufev->readcb;
 if (writecb_ptr)
  *writecb_ptr = bufev->writecb;
 if (eventcb_ptr)
  *eventcb_ptr = bufev->errorcb;
 if (cbarg_ptr)
  *cbarg_ptr = bufev->cbarg;

 BEV_UNLOCK(bufev);
}
