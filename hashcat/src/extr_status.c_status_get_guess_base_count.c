
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ attack_mode; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_8__ {int dicts_cnt; } ;
typedef TYPE_2__ straight_ctx_t ;
struct TYPE_9__ {int masks_cnt; } ;
typedef TYPE_3__ mask_ctx_t ;
struct TYPE_10__ {int opti_type; } ;
typedef TYPE_4__ hashconfig_t ;
struct TYPE_11__ {TYPE_2__* straight_ctx; TYPE_3__* mask_ctx; TYPE_1__* user_options; TYPE_4__* hashconfig; } ;
typedef TYPE_5__ hashcat_ctx_t ;


 scalar_t__ ATTACK_MODE_BF ;
 scalar_t__ ATTACK_MODE_COMBI ;
 scalar_t__ ATTACK_MODE_HYBRID1 ;
 scalar_t__ ATTACK_MODE_HYBRID2 ;
 scalar_t__ ATTACK_MODE_STRAIGHT ;
 int OPTI_TYPE_OPTIMIZED_KERNEL ;

int status_get_guess_base_count (const hashcat_ctx_t *hashcat_ctx)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  const user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->attack_mode == ATTACK_MODE_STRAIGHT)
  {
    const straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;

    return straight_ctx->dicts_cnt;
  }

  if (user_options->attack_mode == ATTACK_MODE_COMBI)
  {
    return 1;
  }

  if (user_options->attack_mode == ATTACK_MODE_BF)
  {
    const mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;

    return mask_ctx->masks_cnt;
  }

  if (user_options->attack_mode == ATTACK_MODE_HYBRID1)
  {
    const straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;

    return straight_ctx->dicts_cnt;
  }

  if (user_options->attack_mode == ATTACK_MODE_HYBRID2)
  {
    if (hashconfig->opti_type & OPTI_TYPE_OPTIMIZED_KERNEL)
    {
      const mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;

      return mask_ctx->masks_cnt;
    }

    const straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;

    return straight_ctx->dicts_cnt;
  }

  return 0;
}
