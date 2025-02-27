
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t poll_fds_used; size_t poll_fds_size; struct pollfd* poll_fds; } ;
typedef TYPE_1__ uv_loop_t ;
struct pollfd {int fd; scalar_t__ revents; scalar_t__ events; } ;


 int abort () ;
 struct pollfd* uv__realloc (struct pollfd*,size_t) ;

__attribute__((used)) static void uv__pollfds_maybe_resize(uv_loop_t* loop) {
  size_t i;
  size_t n;
  struct pollfd* p;

  if (loop->poll_fds_used < loop->poll_fds_size)
    return;

  n = loop->poll_fds_size ? loop->poll_fds_size * 2 : 64;
  p = uv__realloc(loop->poll_fds, n * sizeof(*loop->poll_fds));
  if (p == ((void*)0))
    abort();

  loop->poll_fds = p;
  for (i = loop->poll_fds_size; i < n; i++) {
    loop->poll_fds[i].fd = -1;
    loop->poll_fds[i].events = 0;
    loop->poll_fds[i].revents = 0;
  }
  loop->poll_fds_size = n;
}
