
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct TYPE_26__ {scalar_t__ cnt; char* buf; int iconv_enabled; char* iconv_tmp; int iconv_ctx; int (* func ) (char*,scalar_t__,scalar_t__*,scalar_t__*) ;} ;
typedef TYPE_2__ wl_data_t ;
struct TYPE_27__ {scalar_t__ attack_mode; int rule_buf_l; int encoding_to; int encoding_from; } ;
typedef TYPE_3__ user_options_t ;
struct TYPE_28__ {scalar_t__ attack_kern; int rule_len_l; } ;
typedef TYPE_4__ user_options_extra_t ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ time_t ;
struct TYPE_29__ {scalar_t__ kernel_rules_cnt; } ;
typedef TYPE_5__ straight_ctx_t ;
typedef int rule_buf_out ;
struct TYPE_30__ {scalar_t__ bfs_cnt; } ;
typedef TYPE_6__ mask_ctx_t ;
struct TYPE_31__ {int opti_type; } ;
typedef TYPE_7__ hashconfig_t ;
struct TYPE_32__ {TYPE_2__* wl_data; TYPE_3__* user_options; TYPE_4__* user_options_extra; TYPE_6__* mask_ctx; TYPE_5__* straight_ctx; TYPE_7__* hashconfig; TYPE_10__* combinator_ctx; } ;
typedef TYPE_8__ hashcat_ctx_t ;
struct TYPE_24__ {scalar_t__ st_size; scalar_t__ st_blocks; scalar_t__ st_blksize; scalar_t__ STAT_NANOSECONDS_ACCESS_TIME; scalar_t__ st_atime; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_nlink; scalar_t__ st_mode; } ;
struct TYPE_33__ {char* encoding_from; char* encoding_to; TYPE_14__ stat; scalar_t__ cnt; } ;
typedef TYPE_9__ dictstat_t ;
struct TYPE_22__ {scalar_t__ combs_cnt; } ;
typedef TYPE_10__ combinator_ctx_t ;
struct TYPE_25__ {scalar_t__ st_size; } ;
struct TYPE_23__ {char const* dictfile; scalar_t__ cached_cnt; double percent; scalar_t__ runtime; scalar_t__ cnt2; scalar_t__ cnt; scalar_t__ comp; scalar_t__ keyspace; TYPE_1__ stat; } ;
typedef TYPE_11__ cache_hit_t ;
typedef int cache_hit ;
typedef TYPE_11__ cache_generate_t ;
typedef int cache_generate ;
typedef int HCFILE ;


 scalar_t__ ATTACK_KERN_COMBI ;
 scalar_t__ ATTACK_KERN_STRAIGHT ;
 scalar_t__ ATTACK_MODE_HYBRID2 ;
 int EVENT_DATA (int ,TYPE_11__*,int) ;
 int EVENT_WORDLIST_CACHE_GENERATE ;
 int EVENT_WORDLIST_CACHE_HIT ;
 size_t HCBUFSIZ_TINY ;
 int OPTI_TYPE_OPTIMIZED_KERNEL ;
 scalar_t__ PW_MAX ;
 scalar_t__ RP_PASSWORD_SIZE ;
 int _old_apply_rule (int ,int ,char*,scalar_t__,char*) ;
 scalar_t__ convert_from_hex (TYPE_8__*,char*,scalar_t__) ;
 int dictstat_append (TYPE_8__*,TYPE_9__*) ;
 scalar_t__ dictstat_find (TYPE_8__*,TYPE_9__*) ;
 scalar_t__ fstat (int ,TYPE_14__*) ;
 int hc_feof (int *) ;
 int hc_fileno (int *) ;
 size_t iconv (int ,char**,size_t*,char**,size_t*) ;
 int load_segment (TYPE_8__*,int *) ;
 int memset (char*,int ,int) ;
 int overflow_check_u64_add (scalar_t__,scalar_t__) ;
 int overflow_check_u64_mul (scalar_t__,scalar_t__) ;
 scalar_t__ run_rule_engine (int ,int ) ;
 int strncpy (char*,int ,int) ;
 int stub1 (char*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int time (scalar_t__*) ;

int count_words (hashcat_ctx_t *hashcat_ctx, HCFILE *fp, const char *dictfile, u64 *result)
{
  combinator_ctx_t *combinator_ctx = hashcat_ctx->combinator_ctx;
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;
  mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;
  user_options_t *user_options = hashcat_ctx->user_options;
  wl_data_t *wl_data = hashcat_ctx->wl_data;



  dictstat_t d;

  d.cnt = 0;

  if (fstat (hc_fileno (fp), &d.stat))
  {
    *result = 0;

    return 0;
  }

  d.stat.st_mode = 0;
  d.stat.st_nlink = 0;
  d.stat.st_uid = 0;
  d.stat.st_gid = 0;
  d.stat.st_rdev = 0;
  d.stat.st_atime = 0;
  memset (d.encoding_from, 0, sizeof (d.encoding_from));
  memset (d.encoding_to, 0, sizeof (d.encoding_to));

  strncpy (d.encoding_from, user_options->encoding_from, sizeof (d.encoding_from) - 1);
  strncpy (d.encoding_to, user_options->encoding_to, sizeof (d.encoding_to) - 1);

  if (d.stat.st_size == 0)
  {
    *result = 0;

    return 0;
  }

  const u64 cached_cnt = dictstat_find (hashcat_ctx, &d);

  if (run_rule_engine (user_options_extra->rule_len_l, user_options->rule_buf_l) == 0)
  {
    if (cached_cnt)
    {
      u64 keyspace = cached_cnt;

      if (user_options_extra->attack_kern == ATTACK_KERN_STRAIGHT)
      {
        if (overflow_check_u64_mul (keyspace, straight_ctx->kernel_rules_cnt) == 0) return -1;

        keyspace *= straight_ctx->kernel_rules_cnt;
      }
      else if (user_options_extra->attack_kern == ATTACK_KERN_COMBI)
      {
        if (((hashconfig->opti_type & OPTI_TYPE_OPTIMIZED_KERNEL) == 0) && (user_options->attack_mode == ATTACK_MODE_HYBRID2))
        {
          if (overflow_check_u64_mul (keyspace, mask_ctx->bfs_cnt) == 0) return -1;

          keyspace *= mask_ctx->bfs_cnt;
        }
        else
        {
          if (overflow_check_u64_mul (keyspace, combinator_ctx->combs_cnt) == 0) return -1;

          keyspace *= combinator_ctx->combs_cnt;
        }
      }

      cache_hit_t cache_hit;

      cache_hit.dictfile = dictfile;
      cache_hit.stat.st_size = d.stat.st_size;
      cache_hit.cached_cnt = cached_cnt;
      cache_hit.keyspace = keyspace;

      EVENT_DATA (EVENT_WORDLIST_CACHE_HIT, &cache_hit, sizeof (cache_hit));

      *result = keyspace;

      return 0;
    }
  }

  time_t rt_start;

  time (&rt_start);

  time_t now = 0;
  time_t prev = 0;

  u64 comp = 0;
  u64 cnt = 0;
  u64 cnt2 = 0;

  while (!hc_feof (fp))
  {
    load_segment (hashcat_ctx, fp);

    comp += wl_data->cnt;

    u64 i = 0;

    while (i < wl_data->cnt)
    {
      u64 len;
      u64 off;

      char *ptr = wl_data->buf + i;

      wl_data->func (ptr, wl_data->cnt - i, &len, &off);

      i += off;




      len = (u32) convert_from_hex (hashcat_ctx, ptr, len);



      if (wl_data->iconv_enabled == 1)
      {
        char *iconv_ptr = wl_data->iconv_tmp;
        size_t iconv_sz = HCBUFSIZ_TINY;

        size_t ptr_len = len;

        const size_t iconv_rc = iconv (wl_data->iconv_ctx, &ptr, &ptr_len, &iconv_ptr, &iconv_sz);

        if (iconv_rc == (size_t) -1) continue;

        ptr = wl_data->iconv_tmp;
        len = HCBUFSIZ_TINY - iconv_sz;
      }

      if (run_rule_engine (user_options_extra->rule_len_l, user_options->rule_buf_l))
      {
        if (len >= RP_PASSWORD_SIZE) continue;

        char rule_buf_out[RP_PASSWORD_SIZE];

        memset (rule_buf_out, 0, sizeof (rule_buf_out));

        const int rule_len_out = _old_apply_rule (user_options->rule_buf_l, user_options_extra->rule_len_l, ptr, (u32) len, rule_buf_out);

        if (rule_len_out < 0) continue;
      }

      cnt2++;

      if (len > PW_MAX) continue;

      d.cnt++;

      if (user_options_extra->attack_kern == ATTACK_KERN_STRAIGHT)
      {
        if (overflow_check_u64_add (cnt, straight_ctx->kernel_rules_cnt) == 0) return -1;

        cnt += straight_ctx->kernel_rules_cnt;
      }
      else if (user_options_extra->attack_kern == ATTACK_KERN_COMBI)
      {
        if (((hashconfig->opti_type & OPTI_TYPE_OPTIMIZED_KERNEL) == 0) && (user_options->attack_mode == ATTACK_MODE_HYBRID2))
        {
          if (overflow_check_u64_add (cnt, mask_ctx->bfs_cnt) == 0) return -1;

          cnt += mask_ctx->bfs_cnt;
        }
        else
        {
          if (overflow_check_u64_add (cnt, combinator_ctx->combs_cnt) == 0) return -1;

          cnt += combinator_ctx->combs_cnt;
        }
      }
    }

    time (&now);

    if ((now - prev) == 0) continue;

    time (&prev);

    double percent = ((double) comp / (double) d.stat.st_size) * 100;

    if (percent < 100)
    {
      cache_generate_t cache_generate;

      cache_generate.dictfile = dictfile;
      cache_generate.comp = comp;
      cache_generate.percent = percent;
      cache_generate.cnt = cnt;
      cache_generate.cnt2 = cnt2;

      EVENT_DATA (EVENT_WORDLIST_CACHE_GENERATE, &cache_generate, sizeof (cache_generate));
    }
  }

  time_t rt_stop;

  time (&rt_stop);

  cache_generate_t cache_generate;

  cache_generate.dictfile = dictfile;
  cache_generate.comp = comp;
  cache_generate.percent = 100;
  cache_generate.cnt = cnt;
  cache_generate.cnt2 = cnt2;
  cache_generate.runtime = rt_stop - rt_start;

  EVENT_DATA (EVENT_WORDLIST_CACHE_GENERATE, &cache_generate, sizeof (cache_generate));

  dictstat_append (hashcat_ctx, &d);



  *result = cnt;

  return 0;
}
