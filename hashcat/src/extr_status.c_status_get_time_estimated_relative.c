
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ runtime; } ;
typedef TYPE_1__ user_options_t ;
typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_7__ {TYPE_1__* user_options; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 char* ETA_RELATIVE_MAX_EXCEEDED ;
 int HCBUFSIZ_TINY ;
 int format_timer_display (struct tm*,char*,int ) ;
 int free (char*) ;
 int get_runtime_left (TYPE_2__ const*) ;
 struct tm* gmtime_r (int*,struct tm*) ;
 scalar_t__ hcmalloc (int ) ;
 int snprintf (char*,int ,char*,char*,...) ;
 int status_get_sec_etc (TYPE_2__ const*) ;
 char* strdup (char*) ;

char *status_get_time_estimated_relative (const hashcat_ctx_t *hashcat_ctx)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  char *display = (char *) hcmalloc (HCBUFSIZ_TINY);

  time_t sec_etc = status_get_sec_etc (hashcat_ctx);

  struct tm *tmp;
  struct tm tm;

  tmp = gmtime_r (&sec_etc, &tm);

  if (tmp == ((void*)0))
  {
    snprintf (display, HCBUFSIZ_TINY, "%s", ETA_RELATIVE_MAX_EXCEEDED);
  }
  else
  {
    format_timer_display (tmp, display, HCBUFSIZ_TINY);
  }

  if (user_options->runtime > 0)
  {
    const int runtime_left = get_runtime_left (hashcat_ctx);

    char *tmp_display = strdup (display);

    if (runtime_left > 0)
    {
      time_t sec_left = runtime_left;

      struct tm *tmp_left;
      struct tm tm_left;

      tmp_left = gmtime_r (&sec_left, &tm_left);

      char *display_left = (char *) hcmalloc (HCBUFSIZ_TINY);

      format_timer_display (tmp_left, display_left, HCBUFSIZ_TINY);

      snprintf (display, HCBUFSIZ_TINY, "%s; Runtime limited: %s", tmp_display, display_left);

      free (display_left);
    }
    else
    {
      snprintf (display, HCBUFSIZ_TINY, "%s; Runtime limit exceeded", tmp_display);
    }

    free (tmp_display);
  }

  return display;
}
