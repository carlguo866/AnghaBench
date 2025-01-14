
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct msgbuf {int dummy; } ;
struct cdev {int dummy; } ;
typedef int buf ;


 int EWOULDBLOCK ;
 int IO_NDELAY ;
 int cv_wait_sig (int *,int *) ;
 int imin (int,scalar_t__) ;
 int log_wakeup ;
 int msgbuf_getbytes (struct msgbuf*,char*,int) ;
 scalar_t__ msgbuf_getcount (struct msgbuf*) ;
 int msgbuf_lock ;
 struct msgbuf* msgbufp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uiomove (char*,int,struct uio*) ;

__attribute__((used)) static int
logread(struct cdev *dev, struct uio *uio, int flag)
{
 char buf[128];
 struct msgbuf *mbp = msgbufp;
 int error = 0, l;

 mtx_lock(&msgbuf_lock);
 while (msgbuf_getcount(mbp) == 0) {
  if (flag & IO_NDELAY) {
   mtx_unlock(&msgbuf_lock);
   return (EWOULDBLOCK);
  }
  if ((error = cv_wait_sig(&log_wakeup, &msgbuf_lock)) != 0) {
   mtx_unlock(&msgbuf_lock);
   return (error);
  }
 }

 while (uio->uio_resid > 0) {
  l = imin(sizeof(buf), uio->uio_resid);
  l = msgbuf_getbytes(mbp, buf, l);
  if (l == 0)
   break;
  mtx_unlock(&msgbuf_lock);
  error = uiomove(buf, l, uio);
  if (error || uio->uio_resid == 0)
   return (error);
  mtx_lock(&msgbuf_lock);
 }
 mtx_unlock(&msgbuf_lock);
 return (error);
}
