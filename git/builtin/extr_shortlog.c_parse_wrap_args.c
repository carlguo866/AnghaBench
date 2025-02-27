
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shortlog {int wrap_lines; scalar_t__ wrap; scalar_t__ in1; scalar_t__ in2; } ;
struct option {struct shortlog* value; } ;


 void* DEFAULT_INDENT1 ;
 void* DEFAULT_INDENT2 ;
 void* DEFAULT_WRAPLEN ;
 int error (int ) ;
 void* parse_uint (char const**,char,void*) ;
 int wrap_arg_usage ;

__attribute__((used)) static int parse_wrap_args(const struct option *opt, const char *arg, int unset)
{
 struct shortlog *log = opt->value;

 log->wrap_lines = !unset;
 if (unset)
  return 0;
 if (!arg) {
  log->wrap = DEFAULT_WRAPLEN;
  log->in1 = DEFAULT_INDENT1;
  log->in2 = DEFAULT_INDENT2;
  return 0;
 }

 log->wrap = parse_uint(&arg, ',', DEFAULT_WRAPLEN);
 log->in1 = parse_uint(&arg, ',', DEFAULT_INDENT1);
 log->in2 = parse_uint(&arg, '\0', DEFAULT_INDENT2);
 if (log->wrap < 0 || log->in1 < 0 || log->in2 < 0)
  return error(wrap_arg_usage);
 if (log->wrap &&
     ((log->in1 && log->wrap <= log->in1) ||
      (log->in2 && log->wrap <= log->in2)))
  return error(wrap_arg_usage);
 return 0;
}
