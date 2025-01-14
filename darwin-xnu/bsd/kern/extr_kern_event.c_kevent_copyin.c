
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct user64_kevent {uintptr_t ident; intptr_t data; int fflags; int udata; int flags; int filter; } ;
struct user32_kevent {scalar_t__ data; int fflags; int udata; int flags; int filter; scalar_t__ ident; } ;
struct proc {int dummy; } ;
struct kevent_qos_s {uintptr_t ident; intptr_t data; int * ext; int fflags; int udata; int qos; int flags; int filter; } ;
struct kevent_internal_s {uintptr_t ident; intptr_t data; int * ext; int fflags; int udata; int qos; int flags; int filter; } ;
struct kevent64_s {uintptr_t ident; intptr_t data; int * ext; int fflags; int udata; int flags; int filter; } ;
typedef int kev64 ;
typedef int kev32 ;
typedef int caddr_t ;


 int CAST_USER_ADDR_T (int ) ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 unsigned int KEVENT_FLAG_LEGACY32 ;
 unsigned int KEVENT_FLAG_LEGACY64 ;
 int bzero (struct kevent_internal_s*,int) ;
 int copyin (int,int ,int) ;

__attribute__((used)) static int
kevent_copyin(user_addr_t *addrp, struct kevent_internal_s *kevp, struct proc *p,
  unsigned int flags)
{
 int advance;
 int error;

 if (flags & KEVENT_FLAG_LEGACY32) {
  bzero(kevp, sizeof (*kevp));

  if (IS_64BIT_PROCESS(p)) {
   struct user64_kevent kev64;

   advance = sizeof (kev64);
   error = copyin(*addrp, (caddr_t)&kev64, advance);
   if (error)
    return (error);
   kevp->ident = kev64.ident;
   kevp->filter = kev64.filter;
   kevp->flags = kev64.flags;
   kevp->udata = kev64.udata;
   kevp->fflags = kev64.fflags;
   kevp->data = kev64.data;
  } else {
   struct user32_kevent kev32;

   advance = sizeof (kev32);
   error = copyin(*addrp, (caddr_t)&kev32, advance);
   if (error)
    return (error);
   kevp->ident = (uintptr_t)kev32.ident;
   kevp->filter = kev32.filter;
   kevp->flags = kev32.flags;
   kevp->udata = CAST_USER_ADDR_T(kev32.udata);
   kevp->fflags = kev32.fflags;
   kevp->data = (intptr_t)kev32.data;
  }
 } else if (flags & KEVENT_FLAG_LEGACY64) {
  struct kevent64_s kev64;

  bzero(kevp, sizeof (*kevp));

  advance = sizeof (struct kevent64_s);
  error = copyin(*addrp, (caddr_t)&kev64, advance);
  if (error)
   return(error);
  kevp->ident = kev64.ident;
  kevp->filter = kev64.filter;
  kevp->flags = kev64.flags;
  kevp->udata = kev64.udata;
  kevp->fflags = kev64.fflags;
  kevp->data = kev64.data;
  kevp->ext[0] = kev64.ext[0];
  kevp->ext[1] = kev64.ext[1];

 } else {
  struct kevent_qos_s kevqos;

  bzero(kevp, sizeof (*kevp));

  advance = sizeof (struct kevent_qos_s);
  error = copyin(*addrp, (caddr_t)&kevqos, advance);
  if (error)
   return error;
  kevp->ident = kevqos.ident;
  kevp->filter = kevqos.filter;
  kevp->flags = kevqos.flags;
  kevp->qos = kevqos.qos;

  kevp->udata = kevqos.udata;
  kevp->fflags = kevqos.fflags;
  kevp->data = kevqos.data;
  kevp->ext[0] = kevqos.ext[0];
  kevp->ext[1] = kevqos.ext[1];
  kevp->ext[2] = kevqos.ext[2];
  kevp->ext[3] = kevqos.ext[3];
 }
 if (!error)
  *addrp += advance;
 return (error);
}
