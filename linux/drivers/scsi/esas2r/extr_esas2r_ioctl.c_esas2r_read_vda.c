
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_sg_context {scalar_t__ get_phys_addr; scalar_t__ cur_offset; struct esas2r_adapter* adapter; struct esas2r_request* first_req; } ;
struct esas2r_request {int comp_cb; } ;
struct esas2r_adapter {scalar_t__ vda_buffer; scalar_t__ vda_command_done; int vda_waiter; } ;
struct atto_ioctl_vda {int dummy; } ;
typedef scalar_t__ PGETPHYSADDR ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ VDA_BUFFER_HEADER_SZ ;
 long VDA_MAX_BUFFER_SIZE ;
 struct esas2r_request* esas2r_alloc_request (struct esas2r_adapter*) ;
 int esas2r_debug (char*) ;
 int esas2r_free_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_process_vda_ioctl (struct esas2r_adapter*,struct atto_ioctl_vda*,struct esas2r_request*,struct esas2r_sg_context*) ;
 scalar_t__ get_physaddr_vda ;
 int memcpy (char*,scalar_t__,int) ;
 int vda_complete_req ;
 int wait_event_interruptible (int ,scalar_t__) ;

int esas2r_read_vda(struct esas2r_adapter *a, char *buf, long off, int count)
{
 if (!a->vda_buffer)
  return -ENOMEM;

 if (off == 0) {
  struct esas2r_request *rq;
  struct atto_ioctl_vda *vi =
   (struct atto_ioctl_vda *)a->vda_buffer;
  struct esas2r_sg_context sgc;
  bool wait_for_completion;
  rq = esas2r_alloc_request(a);
  if (rq == ((void*)0)) {
   esas2r_debug("esas2r_read_vda: out of requests");
   return -EBUSY;
  }

  rq->comp_cb = vda_complete_req;

  sgc.first_req = rq;
  sgc.adapter = a;
  sgc.cur_offset = a->vda_buffer + VDA_BUFFER_HEADER_SZ;
  sgc.get_phys_addr = (PGETPHYSADDR)get_physaddr_vda;

  a->vda_command_done = 0;

  wait_for_completion =
   esas2r_process_vda_ioctl(a, vi, rq, &sgc);

  if (wait_for_completion) {


   while (!a->vda_command_done)
    wait_event_interruptible(a->vda_waiter,
        a->vda_command_done);
  }

  esas2r_free_request(a, (struct esas2r_request *)rq);
 }

 if (off > VDA_MAX_BUFFER_SIZE)
  return 0;

 if (count + off > VDA_MAX_BUFFER_SIZE)
  count = VDA_MAX_BUFFER_SIZE - off;

 if (count < 0)
  return 0;

 memcpy(buf, a->vda_buffer + off, count);

 return count;
}
