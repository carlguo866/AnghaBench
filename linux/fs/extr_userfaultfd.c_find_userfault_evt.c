
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userfaultfd_wait_queue {int dummy; } ;
struct userfaultfd_ctx {int event_wqh; } ;


 struct userfaultfd_wait_queue* find_userfault_in (int *) ;

__attribute__((used)) static inline struct userfaultfd_wait_queue *find_userfault_evt(
  struct userfaultfd_ctx *ctx)
{
 return find_userfault_in(&ctx->event_wqh);
}
