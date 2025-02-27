
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_srq {TYPE_1__* context; int handle; } ;
struct ibv_sge {int dummy; } ;
struct ibv_recv_wr {int num_sge; struct ibv_recv_wr* next; int sg_list; int wr_id; } ;
struct ibv_post_srq_recv_resp {unsigned int bad_wr; } ;
struct ibv_post_srq_recv {unsigned int wr_count; unsigned int sge_count; int wqe_size; int srq_handle; } ;
struct ibv_kern_recv_wr {int num_sge; int wr_id; } ;
struct TYPE_2__ {int cmd_fd; } ;


 int IBV_INIT_CMD_RESP (struct ibv_post_srq_recv*,int,int ,struct ibv_post_srq_recv_resp*,int) ;
 int POST_SRQ_RECV ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ibv_post_srq_recv_resp*,int) ;
 struct ibv_post_srq_recv* alloca (int) ;
 int errno ;
 int memcpy (struct ibv_sge*,int ,int) ;
 int write (int ,struct ibv_post_srq_recv*,int) ;

int ibv_cmd_post_srq_recv(struct ibv_srq *srq, struct ibv_recv_wr *wr,
        struct ibv_recv_wr **bad_wr)
{
 struct ibv_post_srq_recv *cmd;
 struct ibv_post_srq_recv_resp resp;
 struct ibv_recv_wr *i;
 struct ibv_kern_recv_wr *n, *tmp;
 struct ibv_sge *s;
 unsigned wr_count = 0;
 unsigned sge_count = 0;
 int cmd_size;
 int ret = 0;

 for (i = wr; i; i = i->next) {
  wr_count++;
  sge_count += i->num_sge;
 }

 cmd_size = sizeof *cmd + wr_count * sizeof *n + sge_count * sizeof *s;
 cmd = alloca(cmd_size);

 IBV_INIT_CMD_RESP(cmd, cmd_size, POST_SRQ_RECV, &resp, sizeof resp);
 cmd->srq_handle = srq->handle;
 cmd->wr_count = wr_count;
 cmd->sge_count = sge_count;
 cmd->wqe_size = sizeof *n;

 n = (struct ibv_kern_recv_wr *) ((void *) cmd + sizeof *cmd);
 s = (struct ibv_sge *) (n + wr_count);

 tmp = n;
 for (i = wr; i; i = i->next) {
  tmp->wr_id = i->wr_id;
  tmp->num_sge = i->num_sge;

  if (tmp->num_sge) {
   memcpy(s, i->sg_list, tmp->num_sge * sizeof *s);
   s += tmp->num_sge;
  }

  tmp++;
 }

 resp.bad_wr = 0;
 if (write(srq->context->cmd_fd, cmd, cmd_size) != cmd_size)
  ret = errno;

 (void) VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 wr_count = resp.bad_wr;
 if (wr_count) {
  i = wr;
  while (--wr_count)
   i = i->next;
  *bad_wr = i;
 } else if (ret)
  *bad_wr = wr;

 return ret;
}
