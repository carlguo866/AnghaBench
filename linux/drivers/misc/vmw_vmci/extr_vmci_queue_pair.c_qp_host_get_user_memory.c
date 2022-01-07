
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vmci_queue {TYPE_3__* kernel_if; } ;
struct TYPE_4__ {int header_page; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct TYPE_6__ {int num_pages; TYPE_2__ u; } ;


 int FOLL_WRITE ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_SUCCESS ;
 int get_user_pages_fast (uintptr_t,int,int ,int ) ;
 int pr_debug (char*,int) ;
 int qp_release_pages (int ,int,int) ;

__attribute__((used)) static int qp_host_get_user_memory(u64 produce_uva,
       u64 consume_uva,
       struct vmci_queue *produce_q,
       struct vmci_queue *consume_q)
{
 int retval;
 int err = VMCI_SUCCESS;

 retval = get_user_pages_fast((uintptr_t) produce_uva,
         produce_q->kernel_if->num_pages,
         FOLL_WRITE,
         produce_q->kernel_if->u.h.header_page);
 if (retval < (int)produce_q->kernel_if->num_pages) {
  pr_debug("get_user_pages_fast(produce) failed (retval=%d)",
   retval);
  qp_release_pages(produce_q->kernel_if->u.h.header_page,
     retval, 0);
  err = VMCI_ERROR_NO_MEM;
  goto out;
 }

 retval = get_user_pages_fast((uintptr_t) consume_uva,
         consume_q->kernel_if->num_pages,
         FOLL_WRITE,
         consume_q->kernel_if->u.h.header_page);
 if (retval < (int)consume_q->kernel_if->num_pages) {
  pr_debug("get_user_pages_fast(consume) failed (retval=%d)",
   retval);
  qp_release_pages(consume_q->kernel_if->u.h.header_page,
     retval, 0);
  qp_release_pages(produce_q->kernel_if->u.h.header_page,
     produce_q->kernel_if->num_pages, 0);
  err = VMCI_ERROR_NO_MEM;
 }

 out:
 return err;
}
