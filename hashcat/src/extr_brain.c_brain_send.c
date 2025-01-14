
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int run_thread_level1; } ;
typedef TYPE_1__ status_ctx_t ;
typedef scalar_t__ ssize_t ;
typedef int hc_device_param_t ;


 scalar_t__ BRAIN_LINK_CHUNK_SIZE ;
 int brain_send_all (int,char*,scalar_t__,int,int *,TYPE_1__ const*) ;

bool brain_send (int sockfd, void *buf, size_t len, int flags, hc_device_param_t *device_param, const status_ctx_t *status_ctx)
{
  char *ptr = (char *) buf;

  ssize_t s_pos;
  ssize_t s_len = len;

  for (s_pos = 0; s_pos < s_len - BRAIN_LINK_CHUNK_SIZE; s_pos += BRAIN_LINK_CHUNK_SIZE)
  {
    if (brain_send_all (sockfd, ptr + s_pos, BRAIN_LINK_CHUNK_SIZE, flags, device_param, status_ctx) == 0) return 0;

    if (status_ctx) if (status_ctx->run_thread_level1 == 0) return 0;
  }

  if (brain_send_all (sockfd, ptr + s_pos, s_len - s_pos, flags, device_param, status_ctx) == 0) return 0;

  if (status_ctx) if (status_ctx->run_thread_level1 == 0) return 0;

  return 1;
}
