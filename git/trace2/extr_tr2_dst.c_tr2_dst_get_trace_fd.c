
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int initialized; int fd; int sysenv_var; } ;


 int PREFIX_AF_UNIX ;
 int STDERR_FILENO ;
 int atoi (char const*) ;
 scalar_t__ is_absolute_path (char const*) ;
 scalar_t__ is_directory (char const*) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ starts_with (char const*,int ) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int tr2_dst_malformed_warning (struct tr2_dst*,char const*) ;
 int tr2_dst_trace_disable (struct tr2_dst*) ;
 int tr2_dst_try_auto_path (struct tr2_dst*,char const*) ;
 int tr2_dst_try_path (struct tr2_dst*,char const*) ;
 int tr2_dst_try_unix_domain_socket (struct tr2_dst*,char const*) ;
 char* tr2_sysenv_get (int ) ;

int tr2_dst_get_trace_fd(struct tr2_dst *dst)
{
 const char *tgt_value;


 if (dst->initialized)
  return dst->fd;

 dst->initialized = 1;

 tgt_value = tr2_sysenv_get(dst->sysenv_var);

 if (!tgt_value || !strcmp(tgt_value, "") || !strcmp(tgt_value, "0") ||
     !strcasecmp(tgt_value, "false")) {
  dst->fd = 0;
  return dst->fd;
 }

 if (!strcmp(tgt_value, "1") || !strcasecmp(tgt_value, "true")) {
  dst->fd = STDERR_FILENO;
  return dst->fd;
 }

 if (strlen(tgt_value) == 1 && isdigit(*tgt_value)) {
  dst->fd = atoi(tgt_value);
  return dst->fd;
 }

 if (is_absolute_path(tgt_value)) {
  if (is_directory(tgt_value))
   return tr2_dst_try_auto_path(dst, tgt_value);
  else
   return tr2_dst_try_path(dst, tgt_value);
 }


 if (starts_with(tgt_value, PREFIX_AF_UNIX))
  return tr2_dst_try_unix_domain_socket(dst, tgt_value);



 tr2_dst_malformed_warning(dst, tgt_value);
 tr2_dst_trace_disable(dst);
 return 0;
}
