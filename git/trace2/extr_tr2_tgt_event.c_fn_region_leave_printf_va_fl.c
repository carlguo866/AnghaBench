
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ uint64_t ;
struct tr2tls_thread_ctx {scalar_t__ nr_open_regions; } ;
struct repository {int dummy; } ;
struct json_writer {int json; } ;


 struct json_writer JSON_WRITER_INIT ;
 int event_fmt_prepare (char const*,char const*,int,struct repository const*,struct json_writer*) ;
 int jw_end (struct json_writer*) ;
 int jw_object_begin (struct json_writer*,int ) ;
 int jw_object_double (struct json_writer*,char*,int,double) ;
 int jw_object_intmax (struct json_writer*,char*,scalar_t__) ;
 int jw_object_string (struct json_writer*,char*,char const*) ;
 int jw_release (struct json_writer*) ;
 int maybe_add_string_va (struct json_writer*,char*,char const*,int ) ;
 int tr2_dst_write_line (int *,int *) ;
 int tr2dst_event ;
 scalar_t__ tr2env_event_max_nesting_levels ;
 struct tr2tls_thread_ctx* tr2tls_get_self () ;

__attribute__((used)) static void fn_region_leave_printf_va_fl(
 const char *file, int line, uint64_t us_elapsed_absolute,
 uint64_t us_elapsed_region, const char *category, const char *label,
 const struct repository *repo, const char *fmt, va_list ap)
{
 const char *event_name = "region_leave";
 struct tr2tls_thread_ctx *ctx = tr2tls_get_self();
 if (ctx->nr_open_regions <= tr2env_event_max_nesting_levels) {
  struct json_writer jw = JSON_WRITER_INIT;
  double t_rel = (double)us_elapsed_region / 1000000.0;

  jw_object_begin(&jw, 0);
  event_fmt_prepare(event_name, file, line, repo, &jw);
  jw_object_double(&jw, "t_rel", 6, t_rel);
  jw_object_intmax(&jw, "nesting", ctx->nr_open_regions);
  if (category)
   jw_object_string(&jw, "category", category);
  if (label)
   jw_object_string(&jw, "label", label);
  maybe_add_string_va(&jw, "msg", fmt, ap);
  jw_end(&jw);

  tr2_dst_write_line(&tr2dst_event, &jw.json);
  jw_release(&jw);
 }
}
