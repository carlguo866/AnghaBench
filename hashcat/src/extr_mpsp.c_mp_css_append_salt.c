
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int salt_len; scalar_t__ salt_buf; } ;
typedef TYPE_2__ salt_t ;
struct TYPE_9__ {int css_cnt; TYPE_1__* css_buf; } ;
typedef TYPE_3__ mask_ctx_t ;
struct TYPE_10__ {TYPE_3__* mask_ctx; } ;
typedef TYPE_4__ hashcat_ctx_t ;
struct TYPE_7__ {int cs_len; int * cs_buf; } ;



__attribute__((used)) static int mp_css_append_salt (hashcat_ctx_t *hashcat_ctx, salt_t *salt_buf)
{
  mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;

  u32 salt_len = salt_buf->salt_len;
  u8 *salt_buf_ptr = (u8 *) salt_buf->salt_buf;

  if ((mask_ctx->css_cnt + salt_len) > 256) return -1;

  for (u32 i = 0, j = mask_ctx->css_cnt; i < salt_len; i++, j++)
  {
    mask_ctx->css_buf[j].cs_buf[0] = salt_buf_ptr[i];
    mask_ctx->css_buf[j].cs_len = 1;

    mask_ctx->css_cnt++;
  }

  return 0;
}
